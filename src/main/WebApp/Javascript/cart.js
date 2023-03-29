function deleteCartItem(productId) {
  fetch(`http://localhost:9090/toycat/cart/delete?productId=${productId}`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
  })
    .then((response) => {
      if (response.ok) {
        document.querySelector('#cart-' + productId).remove();
        const indexToRemove = cartItems.findIndex(
          (item) => item.id == productId
        );
        if (indexToRemove !== -1) {
          cartItems.splice(indexToRemove, 1);
        }
        updateTotalPrice();
      }
    })
    .catch((error) => {
      console.error('Error deleting cart item', error);
    });
}

function updateTotalPrice() {
  let totalPrice = 0;
  cartItems.forEach((item) => {
    totalPrice += item.price * item.quantity;
  });

  document.querySelector('#total-price').innerText = totalPrice.toFixed(2);
}

function quantityChanged(event, productId) {
  console.log('event', event);
  var selectedOption = event.target.value;
  console.log('Selected option: ' + selectedOption);
  console.log('productId: ' + productId);

  fetch(
    `http://localhost:9090/toycat/cart/add?productId=${productId}&quantity=${selectedOption}`,
    {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
    }
  )
    .then((response) => {
      if (response.ok) {
        const itemToUpdate = cartItems.find((item) => item.id == productId);
        if (itemToUpdate) {
          itemToUpdate.quantity = selectedOption;
        }
        updateTotalPrice();
      }
    })
    .catch((error) => {
      console.error('Error updating cart item', error);
    });
}
