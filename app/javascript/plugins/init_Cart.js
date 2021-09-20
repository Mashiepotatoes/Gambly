import { csrfToken } from "@rails/ujs"

const initCart = () => {
  const cart = document.querySelector('#cart');
  if (cart) {
    const noItems = document.querySelector('.no-items');
    if (window.localStorage.order) {
      cart.classList.remove('d-none');
      fetch('/cart_info', {
        method: 'POST',
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
          "X-CSRF-Token": csrfToken()
        },
        body: window.localStorage.order
      }).then(res => res.json())
        .then(data => {
          renderCartItems(data, cart)
          // activateSubmitBtn(cart);
      });
    } else {
      noItems.classList.remove('d-none');
    }
  }
}

const renderCartItems = (data, cart) => {
  const cartItems = cart.querySelector('.cart-items');
  data.items.forEach((item) => {
    cartItems.innerHTML += `
    <h6>${item.experienceName}</h6>
    <p class="border-bottom">Price: SGD ${(item.experiencePrice /100 ).toFixed(2)} per pax</p>`
  })
  cartItems.insertAdjacentHTML('beforeend', `<p class="text-right font-weight-bold"> Total: SGD ${data.total.toFixed(2)} </p>`)
  console.log(data)
}


// const activateSubmitBtn = (cart) => {
//   const submitBtn = cart.querySelector('.btn-primary');
//   submitBtn.addEventListener('click', () => {
//   fetch('/orders', {
//       method: 'POST',
//       headers: {
//         "Accept": "application/json",
//         "Content-Type": "application/json",
//         "X-CSRF-Token": csrfToken()
//       },
//       body: window.localStorage.order
//     }).then(res => {
//       if (res.status === 200) {
//         window.localStorage.clear();
//         window.location.href = '/success';
//       }
//     })
//   })
// }

export { initCart }
