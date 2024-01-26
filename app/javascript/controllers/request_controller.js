import { Controller } from "@hotwired/stimulus";
// Connects to data-controller="request"
export default class extends Controller {
  static targets = ["form", "submit"];

  connect() {
    console.log("Hello, Stimulus!", this.formTarget);
  }

  // send(event) {
  //   event.preventDefault();
  //   const url = this.formTarget.action;
  //   const token = document.querySelector('meta[name="csrf-token"]').content;
  //   const formData = new FormData(this.formTarget);
  //   const data = Object.fromEntries(formData);
  //   console.log(data);
  //   fetch(url, {
  //     method: "POST",
  //     headers: {
  //       "Accept" : "application/json",
  //     },
  //     body: JSON.stringify(data),
  //   })
  //     .then((response) => response.json())
  //     .then((data) => {
  //       console.log(data);
  //     });
  // }
}
