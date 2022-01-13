const carousel = () => {
  $("#carousel").slick({
    infinite: true,
    slidesToShow: 5,
    slidesToScroll: 5,
    arrows: true,
    nextArrow: '.next_slide',
    prevArrow: '.previous_slide',
    responsive: [
      {
        breakpoint: 1800,
        settings: {
          arrows: false,
          slidesToShow: 4,
          slidesToScroll: 4
        }
      },
      {
        breakpoint: 1280,
        settings: {
          arrows: false,
          slidesToShow: 3,
          slidesToScroll: 3
        }
      },
      {
        breakpoint: 1024,
        settings: {
          centerMode: true,
          slidesToShow: 2,
          centerPadding: "0px"
        }
      },
      {
        breakpoint: 600,
        settings: {
          arrows: false,
          centerMode: true,
          slidesToShow: 1,
          slidesToScroll: 1,
          centerPadding: "110px"
        }
      },
      {
        breakpoint: 500,
        settings: {
          arrows: false,
          centerMode: true,
          slidesToShow: 1,
          slidesToScroll: 1,
          centerPadding: "70px"
        }
      },
      {
        breakpoint: 400,
        settings: {
          arrows: false,
          centerMode: true,
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  });
}

export{carousel}
