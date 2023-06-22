import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("coucou")

    const form = document.querySelector(".edit_clown");
    const popup = document.querySelector(".popup-clown");

    form.addEventListener("submit", (event) => {
      event.preventDefault();
      console.log("clique");
      popup.style.opacity = "1";
      popup.style.pointerEvents = "auto";
    });
  };
};
