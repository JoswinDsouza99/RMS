package com.RMS.Bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "candidate_master")
public class CandidateMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="candidate_id",columnDefinition="int")
	private Integer candidate_id;
	
	@Column(name="full_name")
	private String full_name;
	
	@Column(name="email_id")
	private String email_id;
	
	@Column(name="password")
	private String password;
	
	@Column(name="deleted")
	private String deleted;
	
	@Column(name="active_inactive")
	private String active_inactive;
	
	@Column(name="registration_date")
	private Date registration_date;
	
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