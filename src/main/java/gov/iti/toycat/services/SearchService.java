package gov.iti.toycat.services;

import java.util.ArrayList;
import java.util.List;

import gov.iti.toycat.models.dtos.ProductDTO;
import gov.iti.toycat.models.entities.Product;
import gov.iti.toycat.models.mappers.ProductMapper;
import gov.iti.toycat.repositories.ProductRepository;

public class SearchService {

    ProductRepository productRepository;

    public SearchService() {
        this.productRepository = new ProductRepository();
    }

    private List<ProductDTO> getAllProducts() {
        List<ProductDTO> productsDto = new ArrayList<ProductDTO>();
        List<Product> products = productRepository.findAll();
        System.out.println("productRepository.findAll() " +  products );
        for (Product product : products) {
            productsDto.add(ProductMapper.toDto(product));
        }

        return productsDto;
    }

    public List<ProductDTO> searchForProducts(String queryString){
        List<ProductDTO> searchResult = new ArrayList<>();
        for (ProductDTO productDTO : getAllProducts()) {
            if(productDTO.getName().equals(queryString))
            searchResult.add(productDTO);
        }
        return searchResult;
    }
    
}
