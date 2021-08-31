import flatpickr from "flatpickr";



const initFlatpickr = () => {

  const dataDay = document.querySelector(".datepicker");
  if (dataDay) {

    const closingDays = JSON.parse(dataDay.dataset.closingDays);

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



export { initFlatpickr };
