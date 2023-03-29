package gov.iti.toycat.models.mappers;

import gov.iti.toycat.models.dtos.CartItemDTO;
import gov.iti.toycat.models.entities.CartItem;
import gov.iti.toycat.models.entities.CartItemPK;

public class CartMapper {

    public static CartItemDTO toDto(CartItem cart) {
        CartItemDTO dto = new CartItemDTO();
        dto.setProductDto(ProductMapper.toDto(cart.getProduct()) );
        dto.setUserDto(UserMapper.toDto(cart.getUser()));
        dto.setQuantity(cart.getQuantity());
        return dto;
    }

    public static CartItem toEntity(CartItemDTO dto) {
        CartItem cartItem = new CartItem();
        cartItem.setCartProductId(new CartItemPK(dto.getUserDto().getAddress(), dto.getProductDto().getId()));
        cartItem.setQuantity(dto.getQuantity());
        cartItem.setProduct(ProductMapper.toEntity(dto.getProductDto()));
        cartItem.setUser(UserMapper.toEntity(dto.getUserDto()));
        return cartItem;

    }
}
