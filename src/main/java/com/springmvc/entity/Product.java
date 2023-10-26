package com.springmvc.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity(name = "Products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(columnDefinition = "nvarchar(128)")
    private String tenSanPham;
    @Column(columnDefinition = "nvarchar(1000)")
    private String moTaNgan;
    @Column(columnDefinition = "bit", nullable = false)
    private Boolean trangThai = true;
    @Column(columnDefinition = "varchar(255)", unique = true)
    private String url;

    @ManyToOne
    @JoinColumn(name = "idHinhAnh")
    private HinhAnh hinhAnh;

    @OneToMany(mappedBy = "sanPham", fetch = FetchType.EAGER)
    @JsonIgnoreProperties("sanPham")
    private List<BienThe> bienTheList;
}
