import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["scheduleHours", "dateUser"]
  connect() {
  };


  showHours() {
    const url = `${window.location.pathname}${window.location.search}&date_validate=${this.dateUserTarget.value}`;
    const outerElement = this.element;
    fetch(url, {
      headers: { 'Accept': 'text/plain' }
    })
    .then(response => response.text())
    .then((data) => {
      outerElement.innerHTML = data;
      document.querySelector(".main-wrapper").scrollTo({ top: document.querySelector(".main-wrapper").scrollHeight, behavior: 'smooth' })
    })
 }
}
