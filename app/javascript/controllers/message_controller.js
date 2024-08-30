import { Controller } from "@hotwired/stimulus";
import { fadeOut } from "../utilities/fade_out";

// Connects to data-controller="message"
export default class extends Controller {
  static targets = ["message"]

  connect() {
    console.log(this.element);
    fadeOut(this.element);
  }
}
