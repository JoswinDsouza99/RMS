package com.RMS.Bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "company_master")
public class CompanyMaster {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="company_id",columnDefinition="int")
	private Integer company_id;
	
	@Column(name="company_name")
	private String company_name;
	
	@Column(name="email_id")
	private String email_id;
	
	@Column(name="company_reg_no")
	private String company_reg_no;
	
	@Column(name="password")
	private String password;
	
	@Column(name="deleted")
	private String deleted;

	@Column(name="active_inactive")
	private String active_inactive;
	
	@Column(name="registration_date")
	private Date registration_date;
	
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

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getCompany_reg_no() {
		return company_reg_no;
	}

	public void setCompany_reg_no(String company_reg_no) {
		this.company_reg_no = company_reg_no;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}

	public String getActive_inactive() {
		return active_inactive;
	}

	public void setActive_inactive(String active_inactive) {
		this.active_inactive = active_inactive;
	}

	public Date getRegistration_date() {
		return registration_date;
	}

	public void setRegistration_date(Date registration_date) {
		this.registration_date = registration_date;
	}
	
}
