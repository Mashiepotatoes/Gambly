// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require("jquery")
require("slick-carousel")

import "slick-carousel/slick/slick.scss"
import "slick-carousel/slick/slick-theme.scss"
import "../styles/application.scss"



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
import { initModal } from '../plugins/init_Modal';
import { initCart } from '../plugins/init_Cart';
<<<<<<< HEAD
=======
import { initStarRating } from '../plugins/init_star_rating';
>>>>>>> 85347eebc9b79e5fa8be36e49f9a3edde1e58899

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initModal();
  initCart();
<<<<<<< HEAD
=======
  initStarRating();
>>>>>>> 85347eebc9b79e5fa8be36e49f9a3edde1e58899
});

document.addEventListener("turbolinks:load", function () {
  $('.scroller').slick({
    slidesToScroll: 1,
    fade: true,
    autoplay: true,
    autoplaySpeed: 2000,
  })
})
