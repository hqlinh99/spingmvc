package com.springmvc.services.impl;

import com.springmvc.entity.TaiKhoan;
import com.springmvc.entity.VaiTro;
import com.springmvc.repositories.IRoleRepository;
import com.springmvc.repositories.IUserRepository;
import com.springmvc.services.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class UserService implements IUserService {
    @Autowired
    private IUserRepository userRepositories;
    @Autowired
    private IRoleRepository roleRepositories;

    @Override
    public List<TaiKhoan> getAll() {
        return userRepositories.findAll();
    }

    @Override
    public TaiKhoan getById(int id) {
        return null;
    }

    @Override
    public void insert(TaiKhoan taiKhoan) {
        Optional<TaiKhoan> taiKhoanByEmail = userRepositories.findAllByEmail(taiKhoan.getEmail());
        Optional<TaiKhoan> taiKhoanByTTK = userRepositories.findAllByTenTaiKhoan(taiKhoan.getTenTaiKhoan());
        Optional<VaiTro> vaiTro = roleRepositories.findById(1004);
        if (taiKhoanByTTK.isPresent())
            throw new IllegalStateException("tên tài khoản đã tồn tại!");
        if (taiKhoanByEmail.isPresent())
            throw new IllegalStateException("email đã tồn tại!");
        if (vaiTro.isEmpty())
            throw new IllegalStateException("vai trò là khách hàng chưa tồn tại!");

        taiKhoan.setVaiTro(vaiTro.get());
        userRepositories.save(taiKhoan);
    }

    @Override
    public void update(Integer id, TaiKhoan taiKhoan) {
        Optional<TaiKhoan> taiKhoanOptional = userRepositories.findById(id);
        if (taiKhoanOptional.isEmpty()) throw new IllegalStateException("không tìm thấy tài khoản có id " + id);
        if (!taiKhoan.getTenTaiKhoan().isEmpty()) taiKhoanOptional.get().setTenTaiKhoan(taiKhoan.getTenTaiKhoan());
        if (!taiKhoan.getMatKhau().isEmpty()) taiKhoanOptional.get().setMatKhau(taiKhoan.getMatKhau());
        if (taiKhoan.getVaiTro() != null) taiKhoanOptional.get().setVaiTro(taiKhoan.getVaiTro());
    }

    @Override
    public void delete(Integer id) {
        boolean exist = userRepositories.existsById(id);
        if (!exist) throw new IllegalStateException("tài khoản với id " + id + " không tồn tại!");
        userRepositories.deleteById(id);
    }
}
