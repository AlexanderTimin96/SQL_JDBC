package ru.netology.JDBCTemplate.service;

import org.springframework.stereotype.Service;
import ru.netology.JDBCTemplate.DAO.ProductRepository;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    private final ProductRepository productRepository;

    public ProductServiceImpl(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public List<String> getProductsNames(String name) {
        return productRepository.getProductsNames(name);
    }
}
