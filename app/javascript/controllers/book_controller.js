import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["button", "input"]

  select(evt) {
    this.buttonTarget.classList.add('active')

    if (this.inputTargets.filter((input) => input.checked).length === 0) {
      this.buttonTarget.classList.remove('active')
    }
  }
}
