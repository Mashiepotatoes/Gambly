const initModal = () => {
  const modal = document.querySelector('#exampleModal');

  if (modal) {
    $('#exampleModal').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget) // Button that triggered the modal
      var experienceName = button.data('experience-name')
      var experiencePrice = button.data('experience-price')
      var experienceId = button.data('experience-id')
      // Extract info from data-* attributes
      // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
      // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
      var modal = $(this)

      const paxValue = modal.find('#experience-pax')
      paxValue.val(1)

      const modalPrice = modal.find('.modal-price')
      modalPrice.text('$' + experiencePrice * paxValue.val())

      modal.find('.modal-title').text(experienceName)
      modal.attr('data-current-experience-id', experienceId)

      paxValue.on('change', () => {
        modalPrice.text('$' + experiencePrice * paxValue.val())
      })
    })
    initAddToCart();
  }
}

const initAddToCart = () => {
  // select the modal button
  const addToCartBtn = document.querySelector('.btn-modal');
  const price = document.querySelector('#experience-price');
  const pax = document.querySelector('#experience-pax');
  addToCartBtn.addEventListener('click', () => {
    const currentExperienceId = document.querySelector('.modal').dataset.currentExperienceId;

    const experienceOrder = {
      experienceId: currentExperienceId,
      price: price.value,
      pax: pax.value
    }

    writeToLocalStorage(experienceOrder)
  })
}

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
  window.localStorage.order;

  //when i click on it

  // get the id from the modal div - current experience
  // get the amt from the form

  // write to local storage
}

export { initModal }
