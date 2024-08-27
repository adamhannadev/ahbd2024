import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="footworks"
export default class extends Controller {
  static targets = [ "db"]
  connect() {
    console.log("Hello, Stimulus!", this.element)
    this.dbTargets.forEach(db => {
      db.innerHTML = "Changed"
    });
  }
}
