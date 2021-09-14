const accountDropdown = () => {
  var dropdown = document.querySelector("#accountDropdown")
  var button = document.querySelector("#accountButton")

  button.addEventListener("mouseover", () => {
    if(dropdown.classList.contains("hidden")) {
      dropdown.classList.remove("hidden")
    } else {
      dropdown.classList.toggle("hidden")
    }
  })

  dropdown.addEventListener("mouseout", () => {
    dropdown.classList.toggle("hidden")
  })
}

export{accountDropdown}
