import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const initGeoloc = (map) => {
  map.addControl(
    new mapboxgl.GeolocateControl({
      positionOptions: {
        enableHighAccuracy: true
      },
      // When active the map will receive updates to the device's location as it changes.
      trackUserLocation: true,
      // Draw an arrow next to the location dot to indicate which direction the device is heading.
      showUserHeading: true
    })
  )
}

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
    map.fitBounds(bounds, { padding: 50, maxZoom: 15, duration: 0 });
  };

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/ricawdo/cksx3jkby68l218pfkypr5ps3'
    });

    const markers = JSON.parse(mapElement.dataset.markers);

    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);
      new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(map);
    });

    // call mapbox api to geolocate destination dataset => type string
    fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${mapElement.dataset.destination}.json?access_token=${mapElement.dataset.mapboxApiKey}`)
      .then(response => response.json())
      .then((data) => {
        new mapboxgl.Marker({ color: 'red' })
          .setLngLat(data.features[0].geometry.coordinates)
          .addTo(map);
      })

    fitMapToMarkers(map, markers);
    initGeoloc(map);
  }

};

export { initMapbox };
