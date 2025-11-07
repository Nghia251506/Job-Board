package com.t2404e.jobboard.repository;

import com.t2404e.jobboard.model.JobPost;
import com.t2404e.jobboard.model.JobTYPE;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface JobPostRepository extends JpaRepository<JobPost, Long> {
    List<JobPost> findByTitle(String title);
    List<JobPost> findByDeleteStatus(JobPost.DeleteStatus status);
    @Query("""
    SELECT jp FROM JobPost jp
    WHERE (:q IS NULL OR
           LOWER(CONCAT(jp.title,' ',jp.description,' ',jp.location))
             LIKE LOWER(CONCAT('%', :q, '%')))
      AND (:companyId IS NULL OR jp.company.id = :companyId)
      AND (:jobType IS NULL OR jp.jobType = :jobType)
  """)
    Page<JobPost> search(
            @Param("q") String q,
            @Param("companyId") Long companyId,
            @Param("jobType") JobTYPE jobType,
            Pageable pageable
    );

    @Query("""
    select jp from JobPost jp
    left join fetch jp.company
    where jp.id = :id
  """)
    Optional<JobPost> findDetailById(@Param("id") Long id);
}
