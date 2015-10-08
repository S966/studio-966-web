L.mapbox.accessToken = 'pk.eyJ1IjoiOTY2IiwiYSI6IlYtTlBwQ1kifQ.2KPxu2Nv_c5IPZMZj7EFcw';
var map = L.mapbox.map('map', '966.i66h5i7m', {
    zoomControl: false
}).setView([41.0252, 28.9950], 11);

// Disable drag and zoom handlers.
map.dragging.disable();
map.touchZoom.disable();
map.doubleClickZoom.disable();
map.scrollWheelZoom.disable();

// Disable tap handler, if present.
if (map.tap) map.tap.disable();
