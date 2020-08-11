package com.RMS.Model;

import java.util.Date;

public class CompanyJobDetailsModel {
	private Integer job_details_id;
	private Integer company_id;
	private String job_name;
	private String job_description;
	private String employment_type;
	private String location;
	private Integer required_candidates;
	private String time_duration;
	private Integer maximum_salary;
	private Integer minimum_salary;
	private Date joining_date;
	private String experience;
	private Integer applied;
	
	public Integer getJob_details_id() {
		return job_details_id;
	}
	public void setJob_details_id(Integer job_details_id) {
		this.job_details_id = job_details_id;
	}

	public Integer getCompany_id() {
		return company_id;
	}
	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
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
	public Integer getApplied() {
		return applied;
	}
	public void setApplied(Integer applied) {
		this.applied = applied;
	}
	
	


}
