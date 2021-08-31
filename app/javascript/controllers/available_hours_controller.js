import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["scheduleHours", "dateUser"]
  connect() {
  };


  showHours() {
    const url = `${window.location.pathname}${window.location.search}&date_validate=${this.dateUserTarget.value}`;
    console.log(url);
    const outerElement = this.element;
    fetch(url, {
      headers: { 'Accept': 'text/plain' }
    })
    .then(response => response.text())
    .then((data) => {
      outerElement.innerHTML = data;
    })
 }
}
