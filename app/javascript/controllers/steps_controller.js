import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="steps"
export default class extends Controller {
  static targets = ["output"]

  connect() {
    this.loadData()
  }

  loadData() {
    fetch('/steps')
      .then(response => response.json())
      .then(data => {
        this.outputTarget.textContent = JSON.stringify(data)
      })
      .catch(error => console.error('Error fetching data:', error))
  }
}
