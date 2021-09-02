import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "gender", "search", "servicefemme", "servicehomme" ]

  // connect() {
  //   console.log(this.genderTarget)
  //   console.log(this.searchTarget)
  // }

  showServicefemme(e) {
    e.currentTarget.classList.add('active');
    setTimeout(() => {
      this.servicefemmeTarget.classList.remove("inactive")
      this.genderTarget.classList.add("inactive")
      // if (document.getElementById('gender')) {
      //   document.getElementById('gender').value = e.currentTarget.getAttribute('id');
      // }
    }, 300)
  }

  showServicehomme(e) {
    e.currentTarget.classList.add('active');
    setTimeout(() => {
      this.servicehommeTarget.classList.remove("inactive")
      this.genderTarget.classList.add("inactive")
      // if (document.getElementById('gender')) {
      //   document.getElementById('gender').value = e.currentTarget.getAttribute('id');
      // }
    }, 300)
  }

  showSearch(e) {
    // this.searchTarget.classList.remove("inactive")
    // this.serviceTarget.classList.add("inactive")
    e.currentTarget.classList.add('active');
    document.getElementById('service').value = e.currentTarget.getAttribute('id');
    setTimeout(() => {
      document.getElementById('super-search-form').submit();
    }, 300);
  }
}
