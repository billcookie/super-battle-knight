import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl";
// Connects to data-controller="geocoder"
export default class extends Controller {

  connect() {
    console.log("The 'get_all_addresses' controller is now loaded!");
  }

  mapApi(longtitude, latitude) {
    mapboxgl.accessToken = "pk.eyJ1IjoiYmlsbGNvb2tpZSIsImEiOiJjbDZlbWY0NzkwYnB3M2pwaGxpY3h6Y29lIn0.EgXKFMvOwPGLMiY84leqvA";
    const map = new mapboxgl.Map({
      container: "map",
      style: "mapbox://styles/mapbox/streets-v9",
      center: [longtitude, latitude],
      zoom: 12
    });
    new mapboxgl.Marker()
      .setLngLat([longtitude, latitude])
      .addTo(map);
  }

  geocodeSubmit(event) {
    event.preventDefault();
    const url = `https://api.mapbox.com/geocoding/v5/mapbox.places/${this.addressTarget.value}.json?access_token=pk.eyJ1IjoiYmlsbGNvb2tpZSIsImEiOiJjbDZlbWY0NzkwYnB3M2pwaGxpY3h6Y29lIn0.EgXKFMvOwPGLMiY84leqvA`;
    fetch(url)
      .then(response => response.json())
      .then((data) => {
        const longtitude = data.features[0].center[0];
        const latitude = data.features[0].center[1];
        this.displayTarget.innerText = `${longtitude}, ${latitude}`;
        this.mapApi(longtitude, latitude);
      });
  }
}
