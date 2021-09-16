import { csrfToken } from "@rails/ujs";


const initFavorites = () => {
  const heart = document.querySelector('.fa-heart');
  heart.addEventListener('click', (event) => {
    console.log(event);
    // Change the heart to a filled heart - done
    // remove class far from the target
    // add class fas to the target
    heart.classList.remove("far");
    heart.classList.add("fas");

    // Make an api call to rails and create a new favorite association - hard
    // When I click

    fetch(`/experiences/${heart.dataset.experienceId}/favorites`, {
      method: 'POST', // *GET, POST, PUT, DELETE, etc.
      headers: {
        'Content-Type': 'application/json',
        "X-CSRF-Token": csrfToken()
      },
      body: JSON.stringify({data: "nothing really needed"}) // body data type must match "Content-Type" header
    }).then(res => res.json())
      .then(data => console.log(data))
    // Create a new favorite
    // - current user
    // - experience
  })
}

export { initFavorites };
