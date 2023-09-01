package ru.netology.JDBCTemplate.DAO;

import java.util.List;

public interface ProductRepository {
    List<String> getProductsNames(String name);
}
