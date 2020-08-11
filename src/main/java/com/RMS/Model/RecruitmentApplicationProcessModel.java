package com.RMS.Model;

import java.util.Date;

public class RecruitmentApplicationProcessModel { 

	private Integer recruitment_application_process_id;
	private Integer company_id;
	private Integer candidate_id;
	private Integer job_details_id;
	private String status;
	private String application_date;
	private String approve_reject_date;
	private String comment;
	private String job_name;
	private String full_name;
	private String employment_type;
	private Integer maximum_salary;
	private Integer minimum_salary;
	private String experience;
	private String company_name;
	public Integer getRecruitment_application_process_id() {
		return recruitment_application_process_id;
	}
	public void setRecruitment_application_process_id(Integer recruitment_application_process_id) {
		this.recruitment_application_process_id = recruitment_application_process_id;
	}
	public Integer getCompany_id() {
		return company_id;
	}
	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}
	public Integer getCandidate_id() {
		return candidate_id;
	}
	public void setCandidate_id(Integer candidate_id) {
		this.candidate_id = candidate_id;
	}
	public Integer getJob_details_id() {
		return job_details_id;
	}
	public void setJob_details_id(Integer job_details_id) {
		this.job_details_id = job_details_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getApplication_date() {
		return application_date;
	}
	public void setApplication_date(String application_date) {
		this.application_date = application_date;
	}
	public String getApprove_reject_date() {
		return approve_reject_date;
	}
	public void setApprove_reject_date(String approve_reject_date) {
		this.approve_reject_date = approve_reject_date;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getJob_name() {
		return job_name;
	}
	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}
	public String getFull_name() {
		return full_name;
	}
	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}
	public String getEmployment_type() {
		return employment_type;
	}
	public void setEmployment_type(String employment_type) {
		this.employment_type = employment_type;
	}
	public Integer getMaximum_salary() {
		return maximum_salary;
	}
	public void setMaximum_salary(Integer maximum_salary) {
		this.maximum_salary = maximum_salary;
	}
	public Integer getMinimum_salary() {
		return minimum_salary;
	}
	public void setMinimum_salary(Integer minimum_salary) {
		this.minimum_salary = minimum_salary;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	
}