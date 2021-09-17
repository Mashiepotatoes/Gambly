const initModal = () => {
  const modal = document.querySelector('#exampleModal');
  if (modal) {
    $('#exampleModal').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget) // Button that triggered the modal
      var experienceName = button.data('experience-name')
      var experiencePrice = button.data('experience-price')
      var experienceId = button.data('experience-id')// Extract info from data-* attributes
      // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
      // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
      var modal = $(this)
      modal.find('.modal-title').text(experienceName)
      modal.find('.modal-price').text('$' + experiencePrice)
      modal.attr('data-current-experience-id', experienceId)
<<<<<<< HEAD
=======
      prefillInputs(modal, experienceId);
>>>>>>> e855def (able to update cart)
    })
    initAddToCart();
  }
}

const initAddToCart = () => {
  // select the modal button
  const addToCartBtn = document.querySelector('.btn-modal');
  addToCartBtn.addEventListener('click', () => {
    const currentExperienceId = document.querySelector('.modal').dataset.currentExperienceId;
    const pax = document.querySelector('#experience-pax').value;

    const experienceOrder = {
      experienceId: currentExperienceId,
      pax: pax
    }

    writeToLocalStorage(experienceOrder)
  })
}

<<<<<<< HEAD
const findExperienceInCart = (experienceOrder, orderArr) => {
  debugger
  return orderArr.find((element) => element.experienceId === experienceOrder);
}

const writeToLocalStorage = (experienceOrder) => {
  // if we do have a key for storing our items
  // add the experience order directly to it
  if (window.localStorage.order) {
    const orderArr = JSON.parse(window.localStorage.order);
    const experienceInCart = findExperienceInCart(experienceOrder.experienceId, orderArr);
    // if the experienceOrder.id is in the order
    if (experienceInCart) {
      // then update
      experienceInCart.amount = experienceOrder.amount;
      window.localStorage.order = JSON.stringify(orderArr);
    } else {
      const orderArr = JSON.parse(window.localStorage.order);
      orderArr.push(experienceOrder);
      window.localStorage.order = JSON.stringify(orderArr);
    }
  } else {
    window.localStorage.order = JSON.stringify([experienceOrder])
    // if we dont have it, start it and add the item
  }
  // debugger
  console.log(window.localStorage.order);
=======
  const findExperienceInCart = (experienceOrder, orderArr) => {
    return orderArr.find((element) => element.experienceId === experienceOrder);
  }

  const writeToLocalStorage = (experienceOrder) => {
    // if we do have a key for storing our items
    // add the experience order directly to it
    if (window.localStorage.order) {
      const orderArr = JSON.parse(window.localStorage.order);
      const experienceInCart = findExperienceInCart(experienceOrder.experienceId, orderArr);
      // if the experienceOrder.id is in the order
      if (experienceInCart) {
        // then update
        experienceInCart.amount = experienceOrder.amount;
        window.localStorage.order = JSON.stringify(orderArr);
      } else {
        const orderArr = JSON.parse(window.localStorage.order);
        orderArr.push(experienceOrder);
        window.localStorage.order = JSON.stringify(orderArr);
      }
    } else {
      window.localStorage.order = JSON.stringify([experienceOrder])
      // if we dont have it, start it and add the item
    }
    // debugger
    console.log(window.localStorage.order);

  }
>>>>>>> e855def (able to update cart)

  //when i click on it

  // get the id from the modal div - current experience
  // get the amt from the form

  // write to local storage
<<<<<<< HEAD
}



=======

  const prefillInputs = (modal, experienceId) => {
    if (window.localStorage.order) {
      const orderArr = JSON.parse(window.localStorage.order);
      const experienceInCart = findExperienceInCart(experienceId.toString(), orderArr);
      if (experienceInCart) {
        modal.find('#experience-pax').val(experienceInCart.amount)
      } else {
        modal.find('#experience-pax').val('')
      }
    }
  }
    // if the experienceid is in the localstorage
    // update the modal inputs with the content
    // otherwise
    // the inputs should be empty

>>>>>>> e855def (able to update cart)
export { initModal }
