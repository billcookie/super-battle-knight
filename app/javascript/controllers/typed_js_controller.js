import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Create a Character and Battle", "Join them for fun!!!"],
      typeSpeed: 75,
      loop: true
    })
  }
}
