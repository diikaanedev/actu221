'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "d41d8cd98f00b204e9800998ecf8427e",
"version.json": "e5f5ece15e5c6ffd09599a71018375d6",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "cac5c72ad1e9f1b4f73e7adc8dcbb3a4",
"/": "cac5c72ad1e9f1b4f73e7adc8dcbb3a4",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "073cff61119ff0f7c8644db211119a20",
"assets/packages/open_iconic_flutter/assets/open-iconic.woff": "3cf97837524dd7445e9d1462e3c4afe2",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/AssetManifest.json": "55000d367acb2cd6d97d5b4b7faff8f3",
"assets/assets/images/gif_chargement2.gif": "ed23685339ada1b6d88008cbe1a11e98",
"assets/assets/images/chargement.gif": "88f370353339187e5bbb92ce772cdf9a",
"assets/assets/images/actualite_baniere.jpg": "ed0b9b442ec445653e7ba9d6a621b686",
"assets/assets/images/animation-gif.gif": "66d154e07a656066e48391a73c6467c1",
"assets/assets/images/logo221_rouge.png": "70c2eda4ef73df7bbc10b6c414f87663",
"assets/assets/images/pub_logo_multicolor.png": "a156fa41f5d2cc6a6ca681967fd27721",
"assets/assets/images/logo_solgan.png": "47cc9dc859a838e8f707a7f8d3e19050",
"assets/assets/images/success.gif": "a1057dcb644d8729f4f76b2032f21743",
"assets/assets/images/entreprenariat.jpg": "accadb76c7af1c4c853953b0439478bf",
"assets/assets/images/gif_chargement.gif": "b11a6b06044b6dc8d284d09ad1cc4537",
"assets/assets/images/logo221_blanc.png": "5ba0684fd4adc693f7ef05a44c186e30",
"assets/assets/images/chargement3.gif": "0f8c71347cff8c7004857f3c4bb1cb7c",
"assets/assets/images/back.png": "db78707beebbaba981944cdce6351fa4",
"assets/assets/images/chargement2.gif": "9571bb153efbe288d8e891e0022db58b",
"assets/assets/images/banni%25C3%25A8re-facebook.png": "24cdf628fd47c646ea9dc5afbe2b92f4",
"assets/assets/images/decouverte.jpg": "824de9973f9ff5c7c4c4352d23c44cce",
"assets/assets/images/exclusive.jpeg": "85d8794d9adb2341a8540d60c26d96a3",
"assets/assets/images/next.png": "bc0ca0c8be8ce10b73ab159ebc8931a0",
"assets/FontManifest.json": "de3a5ec6340c657102a308dc6ca2894e",
"manifest.json": "193a177155eaef3ea35b3ce88344d522"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
