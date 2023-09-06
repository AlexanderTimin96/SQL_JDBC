package ru.netology.JDBCTemplate.DAO;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductRepositoryImpl implements ProductRepository {

    @PersistenceContext
    private EntityManager manager;

    @Override
    @Transactional
    public List<String> getProductsNames(String name) {
        var result = manager.createQuery("select O.productName from Order O " +
                        "join Customer C on C.id = O.customer where c.name = :name")
                .setParameter("name", name);
        return result.getResultList();
    }
}
