const carousel = () => {
  $("#carousel").slick({
    infinite: true,
    slidesToShow: 4,
    slidesToScroll: 4,
    arrows: true,
    nextArrow: '.next_slide',
    prevArrow: '.previous_slide'
  });
}

export{carousel}
