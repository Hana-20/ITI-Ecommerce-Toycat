package gov.iti.toycat.services;

import java.util.ArrayList;
import java.util.List;

import gov.iti.toycat.models.dtos.ProductDTO;
import gov.iti.toycat.models.entities.Product;
import gov.iti.toycat.models.mappers.ProductMapper;
import gov.iti.toycat.repositories.ProductRepository;

public class ProductService {

    ProductRepository productRepository;

    public ProductService() {
        this.productRepository = new ProductRepository();
    }

    public List<ProductDTO> getAllProducts() {
        List<ProductDTO> productsDto = new ArrayList<ProductDTO>();
        List<Product> products = productRepository.findAll();
        for (Product product : products) {
            productsDto.add(ProductMapper.toDto(product));
        }

        return productsDto;
    }

    public List<ProductDTO> searchForProduct(String queryTerm){

        List<ProductDTO> productsDto = new ArrayList<ProductDTO>();

        List<Product> products = productRepository.searchProducts(queryTerm);
        for(Product product: products){
            productsDto.add(ProductMapper.toDto(product));
        }
        return productsDto;
    }


    public List<ProductDTO> listByCategory(String categroty){

        List<ProductDTO> productsDto = new ArrayList<ProductDTO>();

        List<Product> products = productRepository.searchByCategory(categroty);
        for(Product product: products){
            productsDto.add(ProductMapper.toDto(product));
        }
        return productsDto;
    }


    public ProductDTO addProduct(ProductDTO productDto){
        Product product = ProductMapper.toEntity(productDto);
        productRepository.insertProduct(product);
        return (ProductMapper.toDto(product));
    }

    public boolean deleteProductWithId(String id) {
        return productRepository.deleteProduct(Integer.parseInt(id)) > 0;
    }

    public ProductDTO getProductWithId(String id) {

        return ProductMapper.toDto(productRepository.getProduct(Integer.parseInt(id)));
    }
    public void editProduct(ProductDTO product){
        new ProductRepository().updateProduct(ProductMapper.toEntity(product));
    }
}
