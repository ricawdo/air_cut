import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    enableTime: true,
    allowInput: true,
    altInput: true,
  });

}

export { initFlatpickr };
