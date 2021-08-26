import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "gender", "service", "search" ]

  connect() {
    console.log(this.genderTarget)
    console.log(this.serviceTarget)
    console.log(this.searchTarget)
    console.log("ab")
  }

  showService(e) {
    this.serviceTarget.classList.remove("inactive")
    this.genderTarget.classList.add("inactive")
    document.getElementById('gender').value = e.currentTarget.getAttribute('id');
  }
  
  showSearch(e) {
    console.log(e.currentTarget.getAttribute('id'))
    this.searchTarget.classList.remove("inactive")
    this.serviceTarget.classList.add("inactive")
    document.getElementById('service').value = e.currentTarget.getAttribute('id');
    document.getElementById('submit_search').click()
  }
}
