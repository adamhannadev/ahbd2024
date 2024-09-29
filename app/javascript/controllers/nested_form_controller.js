// app/javascript/controllers/nested_form_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["new"]
  
  connect(){
    this.newTarget.style.display = "none";
  }

  showNew(){
    this.newTarget.style.display = "block";
  }


  // add(event) {

    
  //   event.preventDefault()
  //   const content = this.templateTarget.innerHTML.replace(/NEW_RECORD/g, new Date().getTime())
  //   this.containerTarget.insertAdjacentHTML('beforeend', content)
  // }

  // remove(event) {
  //   event.preventDefault()
  //   let item = event.target.closest(".nested-fields")
  //   item.querySelector("input[name*='_destroy']").value = 1
  //   item.style.display = 'none'
  // }
}
