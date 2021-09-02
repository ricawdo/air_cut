import { Controller } from "stimulus";
import places from 'places.js';

export default class extends Controller {
  static targets = ["address"];

  connect() {
    const placesAutoComplete = places({ container: this.addressTarget });
    const form = this.element;
    placesAutoComplete.on('change', (e) => {
      form.submit();
    });
  }
}
