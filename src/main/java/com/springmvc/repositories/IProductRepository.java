package com.springmvc.repositories;

import com.springmvc.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

public interface IProductRepository extends JpaRepository<Product, Integer> {
    @Query("select p from Products p where p.url = ?1")
    public Optional<Product> findByUrl(String url);
}
