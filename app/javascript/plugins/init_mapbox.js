import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    console.log(markers.lng);
    console.log(markers.lat);
    if (markers.length > 1) {
    console.log(markers);
    console.log("Markers")
      markers.forEach((marker) => {
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .addTo(map);
      });
      
    fitMapToMarkers(map, markers);
      
    } 
      new mapboxgl.Marker()
      .setLngLat([ markers.lng, markers.lat ])
      .addTo(map);
      console.log(map);
      console.log("Je suis ici")
      fitMapToMarkers(map, markers);
  }
};
const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  console.log(map)
  if (markers.length > 1 && !markers.length) {
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  } else {
    bounds.extend([ markers.lng, markers.lat ])
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }
};
export { initMapbox };