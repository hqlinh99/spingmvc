package com.springmvc.services;

import java.util.List;
import java.util.Optional;

public interface ICrudService<T> {
    public List<T> getAll();
    public T getById(int id);
    public void insert(T t);
    public void update(Integer id, T t);
    public void delete(Integer id);
}
