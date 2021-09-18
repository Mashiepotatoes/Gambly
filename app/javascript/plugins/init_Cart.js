const initCart = () => {
  const cart = document.querySelector('#cart');
  if (cart) {
    const noItems = document.querySelector('.no-items');
    if (window.localStorage.order) {
      cart.classList.remove('d-none');
    } else {
      noItems.classList.remove('d-none');
    }
  }
}

export { initCart }
