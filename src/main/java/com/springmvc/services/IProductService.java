package com.springmvc.services;

import com.springmvc.entity.Product;

import java.util.List;
import java.util.Optional;

public interface IProductService extends ICrudService<Product> {
    public Product getByUrl(String url);
}
