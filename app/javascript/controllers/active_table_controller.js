import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="footworks"
export default class extends Controller {

  inactive(event){
    event.currentTarget.classList.remove("active")
  }

  active(event){
    event.currentTarget.classList.add("active")
  }

  show(event){
   window.location = "/" + event.currentTarget.dataset.model + "/" +event.currentTarget.id
  }
}
