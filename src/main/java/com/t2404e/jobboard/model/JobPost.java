package com.t2404e.jobboard.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Data
@Entity
@Getter
@Setter
@Table(name = "jobposts")
public class JobPost {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "company_id", nullable = false)
    private Company company;

    @NotBlank(message = "Tiêu đề không được để trống")
    @Column(name = "title", length = 255, nullable = false)
    private String title;

    @NotBlank(message = "Mô tả không được để trống")
    @Column(name = "description", nullable = false, columnDefinition = "TEXT")
    private String description;

    @NotBlank(message = "Vị trí không được để trống")
    @Column(name = "location", nullable = false, columnDefinition = "TEXT")
    private String location;

    @Column(name = "salary", length = 255)
    private String salary;

    @Enumerated(EnumType.STRING)
    @Column(name = "jobType", nullable = false, length = 20)
    private JobTYPE jobType;

    @Column(name = "postedDate")
    private Date postedDate;

    @Column(name = "updated_at")
    private Date updatedAt;

    @Column(name = "deleted_at")
    private Date deletedAt;

    // delete_status ENUM('Active','Deleted') DEFAULT 'Active'
    @Enumerated(EnumType.STRING)
    @Column(name = "delete_status", nullable = false, length = 10)
    private DeleteStatus deleteStatus = DeleteStatus.Active;

    public enum DeleteStatus {Active, Deleted}
}
