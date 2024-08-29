import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="footworks"
export default class extends Controller {
  static targets = [ "db"]

  connect() {

  }

  inactive(event){
    event.currentTarget.classList.remove("active")
  }

  active(event){
    event.currentTarget.classList.add("active")
  }
}
