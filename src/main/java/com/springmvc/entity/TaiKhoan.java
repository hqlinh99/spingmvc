package com.springmvc.entity;

import com.fasterxml.jackson.annotation.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;
import java.util.Calendar;
import java.util.Set;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity(name = "Users")
@JsonIdentityInfo(
        generator = ObjectIdGenerators.PropertyGenerator.class,
        property = "id")
public class TaiKhoan {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(unique = true)
    private String tenTaiKhoan;
    private String matKhau;
    private String hoTen;
    @Column(unique = true)
    private String email;
    private String soDienThoai;
    private Date ngayTao = Calendar.getInstance().getTime();

    @OneToOne
    @JoinColumn(name = "idHinhAnh", columnDefinition = "int null")
    private HinhAnh hinhAnh;

    @ManyToOne
    @JsonIgnoreProperties("taiKhoanSet")
    @JoinColumn(name = "idVaiTro", columnDefinition = "int")
    private VaiTro vaiTro;

    @OneToOne
    @JoinColumn(name = "idDiaChi", columnDefinition = "int null")
    private DiaChi diaChi;

    @OneToMany(
            mappedBy = "taiKhoan",
            fetch = FetchType.EAGER)
    private Set<HinhAnh> hinhAnhSet;
    @OneToMany(
            mappedBy = "taiKhoan",
            fetch = FetchType.EAGER)
    private Set<DiaChi> diaChiSet;
}
