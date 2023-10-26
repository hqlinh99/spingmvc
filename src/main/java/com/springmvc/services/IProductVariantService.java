package com.springmvc.services;

import com.springmvc.entity.BienThe;

public interface IProductVariantService extends ICrudService<BienThe>{
    public BienThe findBienTheByIdAndSanPhamUrl(String url, Integer id);
}
