package ru.netology.JDBCTemplate.service;

import java.util.List;

public interface ProductService {
    List<String> getProductsNames(String name);
}
