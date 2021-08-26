const likeButton = () => {
  var button = document.querySelector("#heart")

  button.addEventListener("click", () => {
    if(button.classList.contains("far")) {
      button.classList.remove("far")
      button.classList.toggle("fas")
      button.classList.toggle("text-red-400")
    } else {
      button.classList.remove("fas")
      button.classList.remove("text-red-400")
      button.classList.toggle("far")
    }
  })
}

export { likeButton }
