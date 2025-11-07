package com.t2404e.jobboard.repository;

import com.t2404e.jobboard.model.Company;
import com.t2404e.jobboard.model.JobPost;
import com.t2404e.jobboard.model.JobTYPE;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CompanyRepository extends JpaRepository<Company, Long>{
    List<Company> findByNameContainingIgnoreCaseOrEmailContainingIgnoreCase(String name, String email);
    List<Company> findByDeleteStatus(Company.DeleteStatus status);
    @Query("""
    SELECT com FROM Company com
    WHERE (:q IS NULL OR
           LOWER(CONCAT(com.name,' ',com.website,' '))
             LIKE LOWER(CONCAT('%', :q, '%')))
  """)
     Page<Company> search(
            @Param("q") String q,
            @Param("website") String website,
            Pageable pageable
    );
}
