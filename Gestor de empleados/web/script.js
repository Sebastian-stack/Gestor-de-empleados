document.addEventListener('DOMContentLoaded', () => {
  const sections = document.querySelectorAll('.section');
  const modal = document.getElementById('modal');
  const closeModal = document.querySelector('.close');
  const cardForm = document.getElementById('card-form');
  const cardIdInput = document.getElementById('card-id');
  const descriptionInput = document.getElementById('description');
  const dateInput = document.getElementById('date');

  let currentSection = null;
  let editingCard = null;

  // Open modal
  document.querySelectorAll('.add-btn').forEach(button => {
      button.addEventListener('click', () => {
          currentSection = button.parentElement.querySelector('.cards');
          openModal();
      });
  });

  // Close modal
  closeModal.addEventListener('click', closeModalFunc);

  // Handle form submission
  cardForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const cardId = cardIdInput.value;
      const description = descriptionInput.value;
      const date = dateInput.value;

      if (editingCard) {
          editingCard.querySelector('.card-id').innerText = `ID: ${cardId}`;
          editingCard.querySelector('.card-description').innerText = description;
          editingCard.querySelector('.card-date').innerText = `Fecha: ${date}`;
      } else {
          const newCard = createCardElement(cardId, description, date);
          currentSection.appendChild(newCard);
      }

      closeModalFunc();
  });

  // Open modal
  function openModal() {
      cardIdInput.value = editingCard ? editingCard.querySelector('.card-id').innerText.replace('ID: ', '') : '';
      descriptionInput.value = editingCard ? editingCard.querySelector('.card-description').innerText : '';
      dateInput.value = editingCard ? editingCard.querySelector('.card-date').innerText.replace('Fecha: ', '') : '';
      modal.style.display = 'block';
  }

  // Close modal
  function closeModalFunc() {
      modal.style.display = 'none';
      cardIdInput.value = '';
      descriptionInput.value = '';
      dateInput.value = '';
      editingCard = null;
  }

  // Create card element
  function createCardElement(cardId, description, date) {
      const card = document.createElement('div');
      card.classList.add('card');

      card.innerHTML = `
          <div class="card-header">
              <span class="card-id">ID: ${cardId}</span>
          </div>
          <div class="card-body">
              <p class="card-description">${description}</p>
              <p class="card-date">Fecha: ${date}</p>
          </div>
          <div class="card-footer">
              <button class="btn edit-btn">Edit</button>
              <button class="btn delete-btn">Delete</button>
          </div>
      `;

      const editButton = card.querySelector('.edit-btn');
      const deleteButton = card.querySelector('.delete-btn');

      // Edit card
      editButton.addEventListener('click', () => {
          editingCard = card;
          openModal();
      });

      // Delete card
      deleteButton.addEventListener('click', () => {
          card.remove();
      });

      return card;
  }
});
