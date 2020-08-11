package com.RMS.Bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="candidate_upload_document")
public class CandidateUploadDocument {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="candidate_upload_document_id",columnDefinition="int")
	private Integer candidate_upload_document_id;
	
	@OneToOne
	@JoinColumn(name = "candidate_id",columnDefinition="int")
	private CandidateMaster candidateMaster;
	
	@Column(name="resume_path")
	private String resume_path;
	
	@Column(name="candidate_photo_path")
	private String candidate_photo_path;
	
	@Column(name="id_proof_path")
	private String id_proof_path;

	public Integer getCandidate_upload_document_id() {
		return candidate_upload_document_id;
	}

	public void setCandidate_upload_document_id(Integer candidate_upload_document_id) {
		this.candidate_upload_document_id = candidate_upload_document_id;
	}

	public CandidateMaster getCandidateMaster() {
		return candidateMaster;
	}

	public void setCandidateMaster(CandidateMaster candidateMaster) {
		this.candidateMaster = candidateMaster;
	}

	public String getResume_path() {
		return resume_path;
	}

	public void setResume_path(String resume_path) {
		this.resume_path = resume_path;
	}

	public String getCandidate_photo_path() {
		return candidate_photo_path;
	}

	public void setCandidate_photo_path(String candidate_photo_path) {
		this.candidate_photo_path = candidate_photo_path;
	}

	public String getId_proof_path() {
		return id_proof_path;
	}

	public void setId_proof_path(String id_proof_path) {
		this.id_proof_path = id_proof_path;
	}
	
}
