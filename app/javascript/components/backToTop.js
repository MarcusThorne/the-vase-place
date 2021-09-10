const backToTop = () => {

  const button = document.querySelector("#backToTop")

  button.addEventListener("click", () => {
    window.scrollTo({
      top: 0,
      behavior: "smooth"
    });
  })

  document.addEventListener("scroll", () => {
    if (window.scrollY > 400) {
      button.classList.add("active")
    } else {
      button.classList.remove("active")
    }
  })
}

export { backToTop };
