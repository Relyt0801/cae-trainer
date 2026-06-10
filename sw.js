/* CAE Trainer — Service Worker (robust).
   HTML/Navigation: network-first; statische Assets: cache-first.
   Es werden NUR erfolgreiche (200) Antworten gecacht — so kann nie ein
   404/Fehler/leere Seite zwischengespeichert werden. */
const CACHE = 'cae-trainer-v4';
const ASSETS = ['./', 'index.html', 'manifest.json', 'icon-192.png', 'icon-512.png', 'apple-touch-icon.png'];

self.addEventListener('install', e => {
  e.waitUntil((async () => {
    const c = await caches.open(CACHE);
    // einzeln cachen und Fehler tolerieren (ein fehlendes Asset bricht Install nicht ab)
    await Promise.all(ASSETS.map(u => c.add(u).catch(() => {})));
    await self.skipWaiting();
  })());
});

self.addEventListener('activate', e => {
  e.waitUntil((async () => {
    const keys = await caches.keys();
    await Promise.all(keys.filter(k => k !== CACHE).map(k => caches.delete(k)));
    await self.clients.claim();
  })());
});

function cacheable(res) {
  return res && res.status === 200 && res.type !== 'opaqueredirect';
}

self.addEventListener('fetch', e => {
  if (e.request.method !== 'GET') return;
  const isHTML = e.request.mode === 'navigate' ||
    (e.request.headers.get('accept') || '').includes('text/html');

  if (isHTML) {
    // network-first; nur gültige Seiten cachen; Cache nur als Offline-Fallback
    e.respondWith((async () => {
      try {
        const res = await fetch(e.request);
        if (cacheable(res)) {
          const copy = res.clone();
          caches.open(CACHE).then(c => c.put('index.html', copy)).catch(() => {});
        }
        return res;
      } catch (_) {
        const cached = await caches.match('index.html') || await caches.match('./');
        return cached || Response.error();
      }
    })());
    return;
  }

  // cache-first für statische Assets
  e.respondWith((async () => {
    const hit = await caches.match(e.request);
    if (hit) return hit;
    try {
      const res = await fetch(e.request);
      if (cacheable(res)) {
        const copy = res.clone();
        caches.open(CACHE).then(c => c.put(e.request, copy)).catch(() => {});
      }
      return res;
    } catch (_) {
      return caches.match('index.html');
    }
  })());
});
