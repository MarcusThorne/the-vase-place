import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "@fortawesome/fontawesome-free/css/all"

// Components
import { likeButton } from "../components/likeButton"
import { backToTop } from "../components/backToTop"
import { carousel } from "../components/carousel"
import { categoryScroll } from "../components/categoryScroll"
import { accountDropdown } from "../components/acountDropdown"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener('turbolinks:load', () => {
  likeButton()
  backToTop()
  carousel()
  categoryScroll()
  accountDropdown()
})

document.addEventListener("turbolinks:before-cache", function () {
  const sliders = document.querySelectorAll('.slick-initialized');

  sliders.forEach(item => {
    $(item).slick('unslick');
  })
});
