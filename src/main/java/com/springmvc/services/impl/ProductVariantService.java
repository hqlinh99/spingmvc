package com.springmvc.services.impl;

import com.springmvc.entity.BienThe;
import com.springmvc.repositories.IProductVariantRepository;
import com.springmvc.services.IProductVariantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;

@Service
@Transactional
public class ProductVariantService implements IProductVariantService {
    @Autowired
    private IProductVariantRepository productVariantRepository;

    @Override
    public List<BienThe> getAll() {
        return productVariantRepository.findAll();
    }

    @Override
    public BienThe getById(int id) {
        return productVariantRepository.findById(id).get();
    }

    @Override
    public void insert(BienThe bienThe) {

    }

    @Override
    public void update(Integer id, BienThe bienThe) {

    }

    @Override
    public void delete(Integer id) {
        productVariantRepository.deleteById(id);
    }

    @Override
    public BienThe findBienTheByIdAndSanPhamUrl(String url, Integer id) {
        BienThe bienThe = productVariantRepository.findBienTheByIdAndSanPhamUrl(url, id).get();

        Collections.sort(bienThe.getSanPham().getBienTheList(), (o1 ,o2) -> o1.getId() - o2.getId());

        return bienThe;
    }
}
