import { Controller } from "stimulus";
import flatpickr from "flatpickr";
require("flatpickr/dist/themes/dark.css");


export default class extends Controller {
  static targets = ["datepickr"]

  connect() {
    const closingDays = JSON.parse(this.datepickrTarget.dataset.closingDays);

    flatpickr(".datepicker", {
      inline: true,
      enableTime: false,
      allowInput: true,
      altInput: true,
      disableMobile: true,
      disable: [
        function (date) {
          return closingDays.includes(date.getDay());
        }
      ],
      locale: {
        firstDayOfWeek: 1
      }
    });

  }
}
