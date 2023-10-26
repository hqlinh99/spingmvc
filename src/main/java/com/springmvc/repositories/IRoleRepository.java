package com.springmvc.repositories;

import com.springmvc.entity.VaiTro;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IRoleRepository extends JpaRepository<VaiTro, Integer> {
}
