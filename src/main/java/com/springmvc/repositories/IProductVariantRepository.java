package com.springmvc.repositories;

import com.springmvc.entity.BienThe;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface IProductVariantRepository extends JpaRepository<BienThe, Integer> {
    @Query("select pv from ProductVariants pv join Products p on pv.sanPham = p where p.url = ?1 and pv.id = ?2")
    public Optional<BienThe> findBienTheByIdAndSanPhamUrl(String url, Integer id);
}
