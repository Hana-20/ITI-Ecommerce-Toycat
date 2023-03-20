package gov.iti.toycat.models.dtos;

import java.math.BigDecimal;

public class ProductDTO {

    private Integer id;
    private String description;
    private String image;
    private String name;
    private int quantity;
    private BigDecimal price;
    private CategoryDTO categoryDto;

    public ProductDTO(Integer id, String description, String image, String name, int quantity, BigDecimal price,
            CategoryDTO categoryDto) {
        this.id = id;
        this.description = description;
        this.image = image;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.categoryDto = categoryDto;
    }

    public ProductDTO() {
    }

    public Integer getId() {
        return id;
    }

    public String getDescription() {
        return description;
    }

    public String getImage() {
        return image;
    }

    public String getName() {
        return name;
    }

    public int getQuantity() {
        return quantity;
    }

    public CategoryDTO getCategoryDto() {
        return categoryDto;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setCategoryDto(CategoryDTO categoryDto) {
        this.categoryDto = categoryDto;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "ProductDTO [id=" + id + ", description=" + description + ", image=" + image + ", name=" + name
                + ", quantity=" + quantity + ", price=" + price + ", categoryDto=" + categoryDto + "]";
    }

}
