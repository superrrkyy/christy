/* Service Worker — Situs Christy (axryzure)
   Tujuan:
   1. Situs tetap terbuka saat tidak ada koneksi (aset disimpan di perangkat).
   2. Navigasi ke halaman yang belum tersimpan menampilkan offline.html kustom,
      bukan halaman error bawaan browser.
   3. Saat online, halaman selalu diambil versi terbaru (network-first). */

const VERSION = 'christy-v2';
const PRECACHE = VERSION + '-precache';
const RUNTIME = VERSION + '-runtime';

/* Semua path relatif terhadap lokasi sw.js (root situs). */
const CORE = [
    './',
    './index.html',
    './404.html',
    './offline.html',
    './manifest.webmanifest',
    './christy.webp',
    './assets/favicon-32.png',
    './assets/apple-touch-icon.png',
    './assets/icon-192.png',
    './assets/icon-512.png',
    './assets/og-cover.jpg',
    './img/01.jpg', './img/02.jpg', './img/03.jpg', './img/04.jpg', './img/05.jpg',
    './img/06.jpg', './img/07.jpg', './img/08.jpg', './img/09.jpg', './img/10.jpg'
];

self.addEventListener('install', event => {
    event.waitUntil((async () => {
        const cache = await caches.open(PRECACHE);
        /* addAll gagal total kalau satu file bermasalah → simpan satu per satu. */
        await Promise.all(CORE.map(async url => {
            try {
                const res = await fetch(url, { cache: 'reload' });
                if (res.ok) await cache.put(url, res);
            } catch (e) { /* lewati, dicoba lagi pada kunjungan berikutnya */ }
        }));
        self.skipWaiting();
    })());
});

self.addEventListener('activate', event => {
    event.waitUntil((async () => {
        const keys = await caches.keys();
        await Promise.all(keys
            .filter(k => k !== PRECACHE && k !== RUNTIME)
            .map(k => caches.delete(k)));
        await self.clients.claim();
    })());
});

self.addEventListener('fetch', event => {
    const req = event.request;
    if (req.method !== 'GET') return;

    const url = new URL(req.url);

    /* ---------- 1. Navigasi halaman: network-first, fallback offline ---------- */
    if (req.mode === 'navigate') {
        event.respondWith((async () => {
            try {
                const fresh = await fetch(req);
                /* Simpan salinan agar bisa dibuka offline nanti. */
                const cache = await caches.open(RUNTIME);
                cache.put(req, fresh.clone()).catch(() => {});
                return fresh;
            } catch (e) {
                /* Offline: pakai halaman yang sudah tersimpan, kalau tidak ada → offline.html */
                const exact = await caches.match(req, { ignoreSearch: true });
                if (exact) return exact;
                const shell = await caches.match('./index.html');
                const offline = await caches.match('./offline.html');
                return offline || shell || new Response(
                    '<meta charset="utf-8"><title>Offline</title><body style="font-family:sans-serif;padding:40px">Kamu sedang offline.</body>',
                    { headers: { 'Content-Type': 'text/html; charset=utf-8' }, status: 200 }
                );
            }
        })());
        return;
    }

    /* ---------- 2. Aset: cache-first (cepat & hemat kuota) ---------- */
    event.respondWith((async () => {
        const cached = await caches.match(req, { ignoreSearch: true });
        if (cached) {
            /* Perbarui diam-diam di latar belakang. */
            fetch(req).then(async res => {
                if (res && res.ok) {
                    const cache = await caches.open(RUNTIME);
                    cache.put(req, res.clone()).catch(() => {});
                }
            }).catch(() => {});
            return cached;
        }
        try {
            const res = await fetch(req);
            if (res && res.ok && (url.origin === location.origin || /fonts\.(googleapis|gstatic)\.com|cdnjs\.cloudflare\.com/.test(url.host))) {
                const cache = await caches.open(RUNTIME);
                cache.put(req, res.clone()).catch(() => {});
            }
            return res;
        } catch (e) {
            /* Aset yang tidak tersimpan saat offline */
            if (req.destination === 'image') {
                return caches.match('./assets/og-cover.jpg');
            }
            return new Response('', { status: 504, statusText: 'Offline' });
        }
    })());
});
