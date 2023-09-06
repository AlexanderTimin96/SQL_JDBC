package ru.netology.JDBCTemplate.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "orders")
public class Order {
    @Id
    private int id;

    @Temporal(TemporalType.TIMESTAMP)
    private Date date;


    @ManyToOne(optional = false, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "customer_id")
    private Customer customer;

    private String productName;

    private long amount;
}
