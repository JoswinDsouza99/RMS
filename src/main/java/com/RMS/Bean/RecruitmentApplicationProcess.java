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
@Table(name = "recruitment_application_process")
public class RecruitmentApplicationProcess {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="recruitment_application_process_id",columnDefinition="int")
	private Integer recruitment_application_process_id;
	
	@OneToOne
	@JoinColumn(name="candidate_id",columnDefinition="int")
	private CandidateMaster candidateMaster;
	
	@OneToOne
	@JoinColumn(name = "company_id",columnDefinition="int")
	private CompanyMaster companyMaster;
	
	@OneToOne
	@JoinColumn(name="job_details_id",columnDefinition="int")
	private JobDetails jobDetails;
	
	@Column(name="status")
	private String status;
	
	@Column(name="application_date")
	private Date application_date;
	
	@Column(name="approve_reject_date")
	private Date approve_reject_date;
	
	@Column(name="comment")
	private String comment;

		public Integer getRecruitment_application_process_id() {
		return recruitment_application_process_id;
	}

	public void setRecruitment_application_process_id(Integer recruitment_application_process_id) {
		this.recruitment_application_process_id = recruitment_application_process_id;
	}

	public CandidateMaster getCandidateMaster() {
		return candidateMaster;
	}

	public void setCandidateMaster(CandidateMaster candidateMaster) {
		this.candidateMaster = candidateMaster;
	}

	public CompanyMaster getCompanyMaster() {
		return companyMaster;
	}

	public void setCompanyMaster(CompanyMaster companyMaster) {
		this.companyMaster = companyMaster;
	}

	public JobDetails getJobDetails() {
		return jobDetails;
	}

	public void setJobDetails(JobDetails jobDetails) {
		this.jobDetails = jobDetails;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getApplication_date() {
		return application_date;
	}

	public void setApplication_date(Date application_date) {
		this.application_date = application_date;
	}

	public Date getApprove_reject_date() {
		return approve_reject_date;
	}

	public void setApprove_reject_date(Date approve_reject_date) {
		this.approve_reject_date = approve_reject_date;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
	
	
}
