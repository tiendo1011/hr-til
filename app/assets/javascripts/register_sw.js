$(async function(){
  if ('serviceWorker' in navigator) {
    try {
      await navigator.serviceWorker.register("/sw.js");
    } catch (e) {
      alert("failed to register service worker, sorry about that");
    }
  }
}());
