package com.t2404e.jobboard.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
@Entity
@Table(name = "companies")
public class Company {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "name", length = 255, nullable = false)
    @NotBlank(message = "Tên công ty không được để trống")
    private String name;
    @Column(name = "address",length = 255, nullable = false)
    @NotBlank(message = "Địa chỉ công ty không được để trống")
    private String address;
    @Column(name = "email",length = 255, nullable = false)
    @NotBlank(message = "Email công ty không được để trống")
    private String email;
    @Column(name = "website", length = 255, nullable = true)
    private String website;
    public enum DeleteStatus {Active, Deleted}
    @Enumerated(EnumType.STRING)
    @Column(name = "delete_status")
    public DeleteStatus deleteStatus = DeleteStatus.Active;
}
