package com.RMS.Model;

import java.util.Date;

public class CandidateAndCompanyModel {
	
	private Integer candidate_id;
	private Integer company_id;
	private String company_name;
	private String full_name;
	private String email_id;
	private String password;
	private boolean active_deactive=false;
	private String registration_date;
	private String registration_type;
	private String company_reg_no;
	private Integer recruitment_application_process_id;
	
	
	public Integer getRecruitment_application_process_id() {
		return recruitment_application_process_id;
	}
	public void setRecruitment_application_process_id(Integer recruitment_application_process_id) {
		this.recruitment_application_process_id = recruitment_application_process_id;
	}
	public String getCompany_reg_no() {
		return company_reg_no;
	}
	public void setCompany_reg_no(String company_reg_no) {
		this.company_reg_no = company_reg_no;
	}
	public Integer getCandidate_id() {
		return candidate_id;
	}
	public void setCandidate_id(Integer candidate_id) {
		this.candidate_id = candidate_id;
	}
	public String getFull_name() {
		return full_name;
	}
	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public boolean isActive_deactive() {
		return active_deactive;
	}
	public void setActive_deactive(boolean active_deactive) {
		this.active_deactive = active_deactive;
	}
	public String getRegistration_date() {
		return registration_date;
	}
	public void setRegistration_date(String registration_date) {
		this.registration_date = registration_date;
	}
	public Integer getCompany_id() {
		return company_id;
	}
	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRegistration_type() {
		return registration_type;
	}
	public void setRegistration_type(String registration_type) {
		this.registration_type = registration_type;
	}
	
}
