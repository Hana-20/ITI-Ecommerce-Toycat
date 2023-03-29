package gov.iti.toycat.services;

import java.util.ArrayList;
import java.util.List;

import gov.iti.toycat.models.dtos.CartItemDTO;
import gov.iti.toycat.models.entities.CartItem;
import gov.iti.toycat.models.entities.CartItemPK;
import gov.iti.toycat.models.mappers.CartMapper;
import gov.iti.toycat.repositories.CartRepository;

public class CartService {
    CartRepository cartRepository;

    public CartService() {
        this.cartRepository = new CartRepository();
    }

    public List<CartItemDTO> getCartforUserEmail(String email) {

        List<CartItemDTO> cart = new ArrayList<>();
        List<CartItem> cartEntityList = cartRepository.findAllforUser(email);
        for (CartItem cartItem : cartEntityList) {
            cart.add(CartMapper.toDto(cartItem));
        }

        return cart;
    }

    public CartItemDTO addCartItemToUser(String userEmail, int productId) {
        CartItemPK cartId = new CartItemPK(userEmail, productId);
        CartItem cartEntity = cartRepository.findById(cartId);
        if (cartEntity == null) {
            cartEntity = new CartItem(cartId);
            cartEntity.setQuantity(1);
            cartRepository.save(cartEntity);
            cartRepository.refresh(cartEntity);
        } else {
            cartEntity.setQuantity(cartEntity.getQuantity() + 1);
            cartRepository.update(cartEntity);
        }

        return CartMapper.toDto(cartEntity);
        // return c;
    }

    public void deleteCartItemFromUser(String userEmail, int productId){
         CartItemPK cartId = new CartItemPK(userEmail, productId);
         cartRepository.delete(cartId);
    }

    public CartItemDTO updateCartItemQuantity(String userEmail, int productId, int quantity) {
        CartItemPK cartId = new CartItemPK(userEmail, productId);
        CartItem cartEntity = cartRepository.findById(cartId);
        if (cartEntity == null) {
            cartEntity = new CartItem(cartId);
            cartEntity.setQuantity(quantity);
            cartRepository.save(cartEntity);
            cartRepository.refresh(cartEntity);
            // cartEntity = cartRepository.findById(cartId);

        } else {
            cartEntity.setQuantity(quantity);
            cartRepository.update(cartEntity);
        }

        return CartMapper.toDto(cartEntity);
    }
}
