import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["scheduleHours", "dateUser"]
  connect() {
    console.log(this.scheduleHoursTarget)
  };
  showHours() {

    const url = `"${window.location.href}${this.dateUserTarget.value}"`
    console.log(url);
    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.dateUser.outerHTML = data;
      })
  }
}
