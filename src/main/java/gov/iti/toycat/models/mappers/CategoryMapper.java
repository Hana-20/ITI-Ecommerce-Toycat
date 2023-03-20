package gov.iti.toycat.models.mappers;

import gov.iti.toycat.models.dtos.CategoryDTO;
import gov.iti.toycat.models.entities.Category;

public class CategoryMapper {
    public static CategoryDTO toDto(Category category) {
        CategoryDTO dto = new CategoryDTO();
        dto.setId(category.getId());
        dto.setName(category.getName());

        return dto;
    }

    public static Category toEntity(CategoryDTO dto){
        Category category = new Category() ;
        category.setId(dto.getId());
        category.setName(dto.getName());
        return category;
    }
}
