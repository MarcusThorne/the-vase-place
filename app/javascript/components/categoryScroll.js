const categoryScroll = () => {
  var prevScrollpos = window.pageYOffset;

  window.onscroll = function () {
    var currentScrollPos = window.pageYOffset;
    if (prevScrollpos > currentScrollPos) {
      document.getElementById("categories").style.top = "60px";
    } else {
      document.getElementById("categories").style.top = "0px";
    }
    prevScrollpos = currentScrollPos;
  }
}

export{categoryScroll}
