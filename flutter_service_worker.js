'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "f98baae04da76432b4b4259f6a70c7c9",
"assets/AssetManifest.json": "42bcd699777a98ff6cb6b0761c65e6c8",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "62ec8220af1fb03e1c20cfa38781e17e",
"assets/images/avatar.mp4": "5e0dbf4f1c8d14abeed5dab56ae4333c",
"assets/images/avtar.png": "5ff3c5aa762a89b107a68571bf43f466",
"assets/images/back.jpg": "9807ff7e3572960fac96f7e32af55153",
"assets/images/back2.jpeg": "8765a252eb94c61dc4f0db08ef1737f0",
"assets/images/back3.jpg": "d36222692db7c946c022feb164c9317c",
"assets/images/cloth5.jpg": "2abf1680a0bc41f3a62036b32a49f183",
"assets/images/first.png": "ffccd81b1c59fb11a302ee812fc13a28",
"assets/images/fourth.png": "98a1568fcdd7257c89dbd7059139fdd0",
"assets/images/ground.jpg": "e251387f688dc2a5eaa8b760232d47b4",
"assets/images/ground1.jpg": "55b1676e97323f57a05c8119da739305",
"assets/images/ground4.jpg": "da615d0a90177abe94e9291b15d26104",
"assets/images/hello.png": "5ef117c7a2d8293f006e0dbb621e8ac3",
"assets/images/lap1.png": "44c3b389f28dae0acd9234bf72e9c069",
"assets/images/lap2.png": "bbcda7c4770dac450e7ad3b6aff781d2",
"assets/images/mob1.png": "c1d4404cebec23eb13374ec62e06fb2a",
"assets/images/mob2.png": "ab5455e5df7876553747a93a145f43ff",
"assets/images/p1.jpeg": "bb83af4b18b27238038faa55f032ab63",
"assets/images/p2.jpeg": "6e79f2a26856b5968b37793c82809fb2",
"assets/images/p3.jpeg": "97600aac6481fb904244915f3c1382ac",
"assets/images/p4.jpeg": "84748a374755a1d020cde4eee5fe3e07",
"assets/images/p5.jpeg": "4c825fa04c9d66a50e37984b6a6d2135",
"assets/images/portfolio1_1.jpg": "8fbebed2ee341b7168f7130cdeab44fa",
"assets/images/portfolio1_2.jpg": "06226501031c75e3b728ffc95d8e15fa",
"assets/images/portfolio2_1.png": "ca59d9c50a1f129ab71f1eabe1d1e983",
"assets/images/portfolio2_2.png": "17e1fb9f4ce252a0065b5b54b7a7bc78",
"assets/images/portfolio2_3.png": "0c54a14b204eba74306f673039ef4cbb",
"assets/images/portfolio3_1.jpg": "fc5b72b7c66de9dcca1c1039c9ee713b",
"assets/images/portfolio3_2.jpg": "064641527d2d9ebd4dfde5554844417e",
"assets/images/prod1.png": "48a33e1ab37a6e43165cb8147dce5dc3",
"assets/images/prof.jpg": "c6b4d8da94365bf88014547a8d7a0bd2",
"assets/images/prof1.jpeg": "811ec61a093984648307a0409ef16046",
"assets/images/prof2.jpeg": "febd620050b18779b136fe0a7fb64d57",
"assets/images/prof3.jpeg": "0dd48bba2647261add7dbe3c0a4e1332",
"assets/images/prof4.jpeg": "177c9c7c2db7d23e5d642b56532a3d71",
"assets/images/prof5.jpeg": "4d8dcd5a323fbf698f194daba33f396f",
"assets/images/prof6.jpeg": "1c48769e3a483fcc0a9a96d81b57b6ca",
"assets/images/profile.jpeg": "9a2fbc46198ace85588ff24d5e69f6ee",
"assets/images/second.png": "5599eb144c7e3cec5813ea121cc47cb5",
"assets/images/third.png": "3a72801da3c4d04e27fd6409def3f43c",
"assets/images/user.png": "3e4af0acbc1aabaf026aa2cf9fb8c123",
"assets/logos/bootstrap.png": "38eea5799e9c9dae718e84c13d79f909",
"assets/logos/c-sharp.png": "7633117ee5a6edba4ce790511dbbcb9a",
"assets/logos/clanguage.png": "4ffb8d1f8296467ba6dad05136c699d1",
"assets/logos/cpp.png": "e4f46516b8d0d4b45f958b7e404f2d55",
"assets/logos/css.png": "b848d5d9bb221592064de0f356f61676",
"assets/logos/dartlogo.png": "9271c5feaa7176d4bc87467c11eaa8c0",
"assets/logos/dotnet.png": "223290496ee776132e65a2b2d2e7bf2e",
"assets/logos/flutter.png": "67642a0b80f3d50277c44cde8f450e50",
"assets/logos/git.png": "62df7b3ff18594ae62ffd1c58fda68f8",
"assets/logos/github.png": "d276d54d1d11f2fb2ea5edee28fc7950",
"assets/logos/html.png": "945d8320b2991e7345ea0dda5ee1b6bb",
"assets/logos/JavaScript.png": "6891ca53c103035866b0bd4fbacf0b2a",
"assets/logos/PHP.png": "ddbf90387456729b81d6b1dc6a84c508",
"assets/logos/tailwind.png": "6c63d5aa26973acce7e352c40e2e6f8c",
"assets/logos/visual-studio.png": "952fbeb1c31aceced77b116dd1ff0ed0",
"assets/models/retro_computer.glb": "154eadb1addaefa3fcbf307800fd1ff3",
"assets/NOTICES": "48db399be304e05a4c747ad343483bd1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "d7791ef376c159f302b8ad90a748d2ab",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5070443340d1d8cceb516d02c3d6dee7",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "658b490c9da97710b01bd0f8825fce94",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/1980486.gif": "32b88274cc7cd521b05fbaad65649a68",
"icons/3yZR.gif": "c5be30d266df6e03bc44c9515fa33b4a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "b5cd4affbf9ba5e1684d8a893b3b0c9b",
"/": "b5cd4affbf9ba5e1684d8a893b3b0c9b",
"main.dart.js": "67cc20d7f31fca2447ff077b42b6ef3c",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
  for (var resourceKey of Object.keys(RESOURCES)) {
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
