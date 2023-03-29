package gov.iti.toycat.models.dtos;

import gov.iti.toycat.models.dtos.User.UserDTO;

public class CartItemDTO {
    private int quantity;
    private UserDTO userDto;
    private ProductDTO productDto;

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public UserDTO getUserDto() {
        return userDto;
    }

    public void setUserDto(UserDTO userDto) {
        this.userDto = userDto;
    }

    public ProductDTO getProductDto() {
        return productDto;
    }

    public void setProductDto(ProductDTO productDto) {
        this.productDto = productDto;
    }

    @Override
    public String toString() {
        return "CartItemDTO [quantity=" + quantity + ", userDto=" + userDto + ", productDto=" + productDto + "]";
    }

    
}
