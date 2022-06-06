import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["content"]

  revealContent() {
    this.contentTarget.classList.toggle("d-none")
  }
}
