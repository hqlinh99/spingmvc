package com.springmvc.entity;

import com.fasterxml.jackson.annotation.*;
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
@Entity(name = "Roles")
public class VaiTro {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(columnDefinition = "nvarchar(50)")
    private String tenVaiTro;
    @Column(columnDefinition = "nvarchar(100)")
    private String moTa;

    @OneToMany(
            mappedBy = "vaiTro",
            fetch = FetchType.EAGER)
    @JsonIgnoreProperties("vaiTro")
    private Set<TaiKhoan> taiKhoanSet;
}
