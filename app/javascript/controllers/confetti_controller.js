  import { Controller } from "@hotwired/stimulus"
//   import React from "https://esm.run/react@18";
// import { createRoot } from "https://esm.run/react-dom@18/client";
// import confetti from "https://esm.run/canvas-confetti@1";

export default class extends Controller {
  connect() {
    console.log("confetti");

  };
  pshit() {
    console.log("pshit");
  }
};
// createRoot(document.getElementById("root")).render(<App />);

// const reserveButton = document.querySelector(".btn-form");

// reserveButton.addEventListener("submit", function(event) {
//   event.preventDefault();

//   const confetti = document.createElement("div");
//   confetti.className = "confetti";

//   document.body.appendChild(confetti);

//   setTimeout(function() {
//       confetti.parentNode.removeChild(confetti);
//     }, 3000);

//     event.stopPropagation();
// });
