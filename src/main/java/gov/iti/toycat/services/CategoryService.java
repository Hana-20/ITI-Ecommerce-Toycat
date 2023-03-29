package gov.iti.toycat.services;

import java.util.ArrayList;
import java.util.List;

import gov.iti.toycat.models.dtos.CategoryDTO;
import gov.iti.toycat.models.entities.Category;
import gov.iti.toycat.models.mappers.CategoryMapper;
import gov.iti.toycat.repositories.CategoryRepository;


public class CategoryService {

    CategoryRepository categoryRepository;

    public CategoryService() {
        this.categoryRepository = new CategoryRepository();
    }

    public List<CategoryDTO> getAllCategories() {
        List<CategoryDTO> categoriesDto = new ArrayList<CategoryDTO>();
        List<Category> categories = categoryRepository.findAll();

        for (Category category : categories) {
            categoriesDto.add(CategoryMapper.toDto(category));
        }
        return categoriesDto;
    }

    public CategoryDTO getCategoryWithId(String id) {
        return CategoryMapper.toDto(categoryRepository.findCategoryWithId(id));
    }
    public void addCategory(String name){
        new CategoryRepository().insertCategory(name);
    }

}
