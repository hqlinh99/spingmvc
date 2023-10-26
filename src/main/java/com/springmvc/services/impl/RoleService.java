package com.springmvc.services.impl;

import com.springmvc.entity.VaiTro;
import com.springmvc.repositories.IRoleRepository;
import com.springmvc.services.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class RoleService implements IRoleService {

    @Autowired
    private IRoleRepository roleRepositories;

    @Override
    public List<VaiTro> getAll() {
        return roleRepositories.findAll();
    }

    @Override
    public VaiTro getById(int id) {
        return roleRepositories.findById(id).get();
    }

    @Override
    public void insert(VaiTro t) {

    }

    @Override
    public void update(Integer id, VaiTro t) {
        Optional<VaiTro> vaiTroOptional = roleRepositories.findById(id);
        if (vaiTroOptional.isEmpty()) throw new IllegalStateException("không tìm thấy phân quyền với id " + id);
        if (!t.getTenVaiTro().isEmpty()) vaiTroOptional.get().setTenVaiTro(t.getTenVaiTro());
        vaiTroOptional.get().setMoTa(t.getMoTa());
    }

    @Override
    public void delete(Integer id) {
        boolean exist = roleRepositories.existsById(id);
        if (!exist) throw new IllegalStateException("phân quyền với id " + id + " không tồn tại!");
        roleRepositories.deleteById(id);
    }
}
