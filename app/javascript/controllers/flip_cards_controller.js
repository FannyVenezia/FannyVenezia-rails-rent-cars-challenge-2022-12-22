import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flip-cards"
export default class extends Controller {
  static target = ["description"]

  connect() {
    console.log("hey")
  }
}
