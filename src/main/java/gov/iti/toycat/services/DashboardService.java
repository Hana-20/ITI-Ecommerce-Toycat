package gov.iti.toycat.services;

import java.util.ArrayList;
import java.util.List;

import gov.iti.toycat.models.dtos.ProductDTO;
import gov.iti.toycat.models.entities.Product;
import gov.iti.toycat.models.mappers.ProductMapper;
import gov.iti.toycat.repositories.ProductRepository;
import gov.iti.toycat.repositories.UserRepository;

public class DashboardService {

    ProductRepository productRepository;
    UserRepository userRepository;

    public DashboardService() {
        this.productRepository = new ProductRepository();
        this.userRepository = new UserRepository();
    }

    public List<ProductDTO> getAllProducts() {
        List<ProductDTO> productsDto = new ArrayList<ProductDTO>();
        List<Product> products = productRepository.findAll();
        System.out.println("productRepository.findAll() " + products);
        for (Product product : products) {
            productsDto.add(ProductMapper.toDto(product));
        }

        return productsDto;
    }

    public List<ProductDTO> searchForProduct(String queryTerm) {

        List<ProductDTO> productsDto = new ArrayList<ProductDTO>();

        List<Product> products = productRepository.searchProducts(queryTerm);
        for (Product product : products) {
            productsDto.add(ProductMapper.toDto(product));
        }
        return productsDto;
    }

    public ProductDTO addProduct(ProductDTO productDto) {
        Product product = ProductMapper.toEntity(productDto);
        productRepository.insertProduct(product);
        return (ProductMapper.toDto(product));
    }

    public boolean deleteProductWithId(String id) {
        return productRepository.deleteProduct(Integer.parseInt(id)) > 0;
    }

    public Long getProductsCount() {
        return productRepository.getTotalProductsCount();
    }

    public Long getUsersCount() {
        return userRepository.getTotalUsersCount();
    }
}
