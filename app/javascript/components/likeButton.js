const likeButton = () => {
  var buttons = document.querySelectorAll("#heart")
  var i;

  for (i = 0; i < buttons.length; i++) {
    buttons[i].addEventListener("click", (btn) => {
      var btn = btn.target
      if (btn.classList.contains("far")) {
        btn.classList.remove("far")
        btn.classList.toggle("fas")
        btn.classList.toggle("text-red-400")

      } else {
        btn.classList.remove("fas")
        btn.classList.remove("text-red-400")
        btn.classList.toggle("far")
      }
    })
  }
}

export { likeButton }
