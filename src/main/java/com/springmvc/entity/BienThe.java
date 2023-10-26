package com.springmvc.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity(name = "ProductVariants")
public class BienThe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(columnDefinition = "nvarchar(100) null")
    private String tenBienThe;
    @Column(columnDefinition = "ntext null")
    private String chiTietMoTa;
    private int soTrang;

    @Column(columnDefinition = "bit not null")
    private boolean trangThai = true;
    private int giaBan;

    @ManyToOne
    @JoinColumn(name = "idSanPham")
    @JsonIgnoreProperties("bienTheList")
    private Product sanPham;
}
