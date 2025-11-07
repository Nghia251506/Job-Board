package com.t2404e.jobboard.controller;

import com.t2404e.jobboard.model.Company;
import com.t2404e.jobboard.model.JobPost;
import com.t2404e.jobboard.model.JobTYPE;
import com.t2404e.jobboard.repository.CompanyRepository;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class CompanyController {
    private final CompanyRepository companyRepository;
    public CompanyController(CompanyRepository companyRepository) {
        this.companyRepository = companyRepository;
    }
    @GetMapping("/companies")
    public String list(
            @RequestParam(required = false) String q,
            @RequestParam(required = false) String website,
            @PageableDefault(size = 10, sort = "name", direction = Sort.Direction.DESC)
            Pageable pageable,
            Model model
    ) {
        Page<Company> page = companyRepository.search(
                (q == null || q.isBlank()) ? null : q.trim(),
                website,
                pageable
        );

        model.addAttribute("companies", page);
        model.addAttribute("q", q);
        model.addAttribute("website", website);

        return "companies";
    }
@GetMapping("/companies/{id}")
    public Company findById(long id) {
        return companyRepository.findById(id).get();
    }
    @GetMapping("/companies/add")
    public String showCompanyForm(Model model) {
        model.addAttribute("company", new Company());
        return "company-form";
    }
    @PostMapping("/companies")
    public String save(@Valid Company company, BindingResult  result) {
        if (result.hasErrors()) {
            company.setName(company.getName());
            company.setEmail(company.getEmail());
            company.setAddress(company.getAddress());
            company.setWebsite(company.getWebsite());
            return "company-form";
        }
        companyRepository.save(company);
        return "redirect:/companies";
    }
    @GetMapping("/companies/edit/{id}")
    public String showUpdateForm(@PathVariable("id") Long id, Model model) {
        Company company = companyRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid company Id:" + id));
        model.addAttribute("company", company);
        return "company-form";
    }
    @PostMapping("/companies/{id}")
    public String update(@PathVariable("id") Long id, @Valid Company company, BindingResult result) {
        if (result.hasErrors()) {
            company.setId(id);
            return "company-form";
        }
        companyRepository.save(company);
        return "redirect:/companies";
    }
    @GetMapping("/companies/delete/{id}")
    public String delete(@PathVariable("id") Long id) {
        Company company = companyRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid company Id:" + id));
        company.setDeleteStatus(Company.DeleteStatus.Deleted);
        companyRepository.save(company);
        return "redirect:/companies";
    }
}
