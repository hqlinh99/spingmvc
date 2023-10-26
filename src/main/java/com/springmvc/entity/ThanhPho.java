package com.springmvc.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity(name = "Cities")
public class ThanhPho {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String tenThanhPho;

    @OneToMany (mappedBy = "thanhPho")
    private List<DiaChi> diaChiSet;
}
