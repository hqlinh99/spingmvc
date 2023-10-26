package com.springmvc.services.impl;

import com.springmvc.entity.Product;
import com.springmvc.repositories.IProductRepository;
import com.springmvc.services.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class ProductService implements IProductService {
    @Autowired
    private IProductRepository productRepositories;

    @Override
    public List<Product> getAll() {
        return productRepositories.findAll();
    }

    @Override
    public Product getById(int id) {
        return productRepositories.findById(id).get();
    }

    @Override
    public void insert(Product p) {
        productRepositories.save(p);
    }

    @Override
    public void update(Integer id, Product t) {
        Optional<Product> productOptional = productRepositories.findById(id);
        if (productOptional.isEmpty()) throw new IllegalStateException("không tìm thấy sản phẩm có id là "+ id );
        productOptional.get().setTenSanPham(t.getTenSanPham());
        productOptional.get().setMoTaNgan(t.getMoTaNgan());
        productOptional.get().setUrl(t.getUrl());
    }

    @Override
    public void delete(Integer id) {
        productRepositories.deleteById(id);
    }

    @Override
    public Product getByUrl(String url) {
        Optional<Product> productOptional = productRepositories.findByUrl(url);
        if (productOptional.isEmpty()) throw new IllegalStateException("không tìm thấy sản phẩm có url là "+ url );
        return productOptional.get();
    }
}
