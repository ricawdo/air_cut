import { Controller } from "stimulus";
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ["datepickr"]

  connect() {
    const closingDays = JSON.parse(this.datepickrTarget.dataset.closingDays);

    flatpickr(".datepicker", {
      enableTime: false,
      allowInput: true,
      altInput: true,
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
