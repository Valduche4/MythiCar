import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = { eventId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "eventChannel", id: this.eventIdValue },
      { received: data => this.messagesTarget.insertAdjacentHTML("beforeend", data),
        received: data => this.#insertMessageAndScrollDown(data) }
    )
    console.log(`Subscribed to the event with the id ${this.eventIdValue}.`)
  }

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the event")
    this.channel.unsubscribe()
  }
}
