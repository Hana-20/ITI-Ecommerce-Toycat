package gov.iti.toycat.models.mappers;

import gov.iti.toycat.models.dtos.ProductDTO;
import gov.iti.toycat.models.entities.Product;
import jakarta.persistence.Entity;

public class ProductMapper {

    // public static Product productDtoToProduct(ProductDTO productDto){

    // }

    public static ProductDTO toDto(Product product) {
        ProductDTO dto = new ProductDTO();
        dto = new ProductDTO();
        dto.setId(product.getId());
        dto.setImage(product.getImage());
        dto.setName(product.getName());
        dto.setPrice(product.getPrice());
        dto.setQuantity(product.getQuantity());
        dto.setDescription(product.getDescription());
        dto.setCategoryDto(CategoryMapper.toDto(product.getCategoryId()));
        return dto;
    }

    public static Product toEntity(ProductDTO productDto) {
        Product product = new Product();
        product.setId(productDto.getId());
        product.setImage(productDto.getImage());
        product.setName(productDto.getName());
        product.setPrice(productDto.getPrice());
        product.setQuantity(productDto.getQuantity());
        product.setDescription(productDto.getDescription());
        product.setCategoryId(CategoryMapper.toEntity(productDto.getCategoryDto()));
        return product;

    }

}
