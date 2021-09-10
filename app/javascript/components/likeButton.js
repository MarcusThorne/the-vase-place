const likeButton = () => {
  var buttons = document.querySelectorAll("#heart")
  var i;
  var navbarButton = document.querySelector("#navbarLikeButton")
  var dropDown = document.querySelector("#likedList")

  for (i = 0; i < buttons.length; i++) {
    buttons[i].addEventListener("click", (btn) => {
      var btn = btn.target
      if (btn.classList.contains("far")) {
        btn.classList.remove("far")
        btn.classList.toggle("fas")
        btn.classList.toggle("text-red-400")

        // dropDown.insertAdjacentHTML("afterbegin", `<div class='w-ful h-20 flex bg-white my-1' id=''>
        //   <div class="h-20 w-20">${btn.parentElement.firstChild.nextSibling.outerHTML}</div>
        //   <p class="text-xl text-gray-800 ml-10 my-auto">${btn.parentElement.firstChild.nextSibling.nextElementSibling.firstElementChild.innerHTML}</p>
        //   <p class="text-xl text-gray-800 ml-10 my-auto">${btn.parentElement.firstChild.nextSibling.nextElementSibling.lastElementChild.innerHTML}</p>
        // </div>`)

      } else {
        btn.classList.remove("fas")
        btn.classList.remove("text-red-400")
        btn.classList.toggle("far")
      }
    })
  }

  navbarButton.addEventListener("mouseover", () => {
    dropDown.classList.remove("hidden")
  })

  dropDown.addEventListener("mouseover", () => {
    dropDown.classList.remove("hidden")
  })

  dropDown.addEventListener("mouseleave", () => {
    dropDown.classList.toggle("hidden")
  })
}

export { likeButton }
