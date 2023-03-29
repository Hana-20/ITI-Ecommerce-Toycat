function deleteCartItem(productId) {
  fetch(`http://localhost:9090/toycat/cart/delete?productId=${productId}`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    }
  })
    .then((response) => {
      if (response.ok) { 
        document.querySelector('#cart-' + productId).remove();
      }
    })
    .catch((error) => {
      console.error('Error deleting cart item', error);
    });
}
