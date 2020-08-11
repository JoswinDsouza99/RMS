package com.RMS.Bean;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "job_details")
public class JobDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="job_details_id",columnDefinition="int")
	private Integer job_details_id;
	
	@Column(name="job_name")
	private String job_name;
	
	@Column(name="job_description")
	private String job_description;
	
	@Column(name="employment_type")
	private String employment_type;
	
	@Column(name="location")
	private String location;
	
	@Column(name="required_candidates")
	private Integer required_candidates;
	
	@Column(name="time_duration")
	private String time_duration;

	@Column(name="maximum_salary")
	private Integer maximum_salary;
	
	@Column(name="minimum_salary")
	private Integer minimum_salary;
	
	@Column(name="joining_date")
	private Date joining_date;
	
	@Column(name="experience")
	private String experience;
	
	@Column(name="deleted")
	private String deleted;
	
	
	@OneToOne
	@JoinColumn(name="company_id", columnDefinition = "int")
	private CompanyMaster companyMaster;
	 

	public Integer getJob_details_id() {
		return job_details_id;
	}

	public void setJob_details_id(Integer job_details_id) {
		this.job_details_id = job_details_id;
	}

	public String getJob_name() {
		return job_name;
	}

	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}

	public String getJob_description() {
		return job_description;
	}

	public void setJob_description(String job_description) {
		this.job_description = job_description;
	}

	public String getEmployment_type() {
		return employment_type;
	}

	public void setEmployment_type(String employment_type) {
		this.employment_type = employment_type;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Integer getRequired_candidates() {
		return required_candidates;
	}

	public void setRequired_candidates(Integer required_candidates) {
		this.required_candidates = required_candidates;
	}

	public String getTime_duration() {
		return time_duration;
	}

	public void setTime_duration(String time_duration) {
		this.time_duration = time_duration;
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

	public Date getJoining_date() {
		return joining_date;
	}

	public void setJoining_date(Date joining_date) {
		this.joining_date = joining_date;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public CompanyMaster getCompanyMaster() {
		return companyMaster;
	}

	public void setCompanyMaster(CompanyMaster companyMaster) {
		this.companyMaster = companyMaster;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}
	 
	

	
}
