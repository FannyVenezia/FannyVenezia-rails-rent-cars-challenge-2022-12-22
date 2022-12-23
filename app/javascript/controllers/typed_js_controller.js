import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Pas de voiture ?", "Pas de problème !"],
      typeSpeed: 50,
      loop: true
    })
  }
}
