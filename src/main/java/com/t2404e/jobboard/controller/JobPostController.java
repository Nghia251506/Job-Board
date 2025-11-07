package com.t2404e.jobboard.controller;

import com.t2404e.jobboard.JobboardApplication;
import com.t2404e.jobboard.model.Company;
import com.t2404e.jobboard.model.JobPost;
import com.t2404e.jobboard.model.JobTYPE;
import com.t2404e.jobboard.repository.CompanyRepository;
import com.t2404e.jobboard.repository.JobPostRepository;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.ArrayList;
import java.util.List;

@Controller
public class JobPostController {
    private final JobPostRepository jobPostRepository;
    private final CompanyRepository companyRepository;

    public JobPostController(JobPostRepository jobPostRepository, CompanyRepository companyRepository) {
        this.jobPostRepository = jobPostRepository;
        this.companyRepository = companyRepository;
    }
    @GetMapping("/jobposts")
    public String list(
            @RequestParam(required = false) String q,
            @RequestParam(required = false) Long companyId,
            @RequestParam(required = false) JobTYPE jobType,   // Enum; Spring tự convert từ chuỗi
            @PageableDefault(size = 10, sort = "postedDate", direction = Sort.Direction.DESC)
            Pageable pageable,
            Model model
    ) {
        Page<JobPost> page = jobPostRepository.search(
                (q == null || q.isBlank()) ? null : q.trim(),
                companyId,
                jobType,
                pageable
        );

        model.addAttribute("jobposts", page);
        model.addAttribute("companies", companyRepository.findAll());

        // giữ lại các giá trị filter để render lại form lọc + tạo link phân trang
        model.addAttribute("q", q);
        model.addAttribute("companyId", companyId);
        model.addAttribute("jobType", jobType == null ? null : jobType.name());

        return "jobposts"; // chính là template bạn vừa yêu cầu
    }
    @GetMapping("/jobposts/{id}")
    public String detail(@PathVariable("id") Long id, Model model) {
        JobPost p = jobPostRepository.findDetailById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Job post không tồn tại"));
        model.addAttribute("p", p);
        return "jobpost-detail";
    }
    @GetMapping("/jobposts/add")
    public String showPostForm(Model model) {
        model.addAttribute("jobpost", new JobPost());
        model.addAttribute("companies", companyRepository.findAll());
        return "post-form";
    }
    @PostMapping("/jobposts")
    public String save(@Valid JobPost post, BindingResult  result) {
        if (result.hasErrors()) {
            post.setTitle(post.getTitle());
            post.setDescription(post.getDescription());
            post.setJobType(post.getJobType());
            post.setLocation(post.getLocation());
            post.setCompany(post.getCompany());
            post.setSalary(post.getSalary());
            return "post-form";
        }
        jobPostRepository.save(post);
        return "redirect:/jobposts";
    }
    @GetMapping("/jobposts/edit/{id}")
    public String showUpdateForm(@PathVariable("id") Long id, Model model) {
        JobPost post = jobPostRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid post Id:" + id));
        model.addAttribute("jobpost", post);
        model.addAttribute("companies", companyRepository.findAll());
        return "post-form";
    }
    @PostMapping("/jobposts/{id}")
    public String update(@PathVariable("id") Long id, @Valid JobPost post, BindingResult result) {
        if (result.hasErrors()) {
            post.setId(id);
            return "post-form";
        }
        jobPostRepository.save(post);
        return "redirect:/jobposts";
    }
    @GetMapping("/jobposts/delete/{id}")
    public String delete(@PathVariable("id") Long id) {
        JobPost post = jobPostRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid post Id:" + id));
        post.setDeleteStatus(JobPost.DeleteStatus.Deleted);
        jobPostRepository.save(post);
        return "redirect:/jobposts";
    }
}
