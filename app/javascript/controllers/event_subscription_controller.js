import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { eventId: Number }
  static targets = ["proposition", "votes"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "EventChannel", id: this.eventIdValue },
      // { received: data => this.votesTarget.insertAdjacentHTML("beforeend", data)}
      { received: data => console.log(data)}
    )
    // console.log(`Subscribed to the event with the id ${this.eventIdValue}.`)
  }
}
