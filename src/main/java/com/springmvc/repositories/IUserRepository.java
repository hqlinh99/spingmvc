package com.springmvc.repositories;

import com.springmvc.entity.TaiKhoan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface IUserRepository extends JpaRepository<TaiKhoan, Integer> {
    @Query("select u from Users u where u.email = ?1")
    public Optional<TaiKhoan> findAllByEmail(String email);
    @Query("select u from Users u where u.tenTaiKhoan = ?1")
    public Optional<TaiKhoan> findAllByTenTaiKhoan(String tenTaiKhoan);
}
