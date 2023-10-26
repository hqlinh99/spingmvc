package com.springmvc.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity(name = "Images")
public class HinhAnh {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String url;
    private String alt;

    @ManyToOne
    @JoinColumn(name = "idTaiKhoan")
    private TaiKhoan taiKhoan;

    @OneToMany(mappedBy = "hinhAnh")
    private Set<Product> sanPhamSet;
}
