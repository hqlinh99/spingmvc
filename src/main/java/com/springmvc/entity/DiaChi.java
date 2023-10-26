package com.springmvc.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity(name = "Addresses")
public class DiaChi {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String diaChi;
    private float kinhDo;
    private float viDo;

    @ManyToOne
    @JoinColumn(name = "idTaiKhoan")
    private TaiKhoan taiKhoan;

    @ManyToOne
    @JoinColumn(name = "idThanhPho")
    private ThanhPho thanhPho;
}
