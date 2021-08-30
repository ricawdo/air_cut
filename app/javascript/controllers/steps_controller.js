import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "gender", "search", "servicefemme", "servicehomme" ]

  // connect() {
  //   console.log(this.genderTarget)
  //   console.log(this.searchTarget)
  // }

  showServicefemme(e) {
    this.servicefemmeTarget.classList.remove("inactive")
    this.genderTarget.classList.add("inactive")
    document.getElementById('gender').value = e.currentTarget.getAttribute('id');
  }

  showServicehomme(e) {
    this.servicehommeTarget.classList.remove("inactive")
    this.genderTarget.classList.add("inactive")
    document.getElementById('gender').value = e.currentTarget.getAttribute('id');
  }

  showSearch(e) {
    // this.searchTarget.classList.remove("inactive")
    // this.serviceTarget.classList.add("inactive")
    document.getElementById('service').value = e.currentTarget.getAttribute('id');
    document.getElementById('submit_search').click()
  }
}
