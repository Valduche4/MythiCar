import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["content", "contain","swipe"]

  revealContent() {
    this.contentTarget.classList.toggle("d-none")
    this.containTarget.classList.toggle("expansion")
    this.swipeTarget.classList.toggle("switch")
  }
}
