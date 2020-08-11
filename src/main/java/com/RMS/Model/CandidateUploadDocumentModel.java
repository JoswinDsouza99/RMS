package com.RMS.Model;

public class CandidateUploadDocumentModel {

	private Integer candidate_upload_document_id;
	private Integer candidate_id;
	private String resume_path;
	private String candidate_photo_path;
	private String id_proof_path;
	
	public Integer getCandidate_upload_document_id() {
		return candidate_upload_document_id;
	}
	public void setCandidate_upload_document_id(Integer candidate_upload_document_id) {
		this.candidate_upload_document_id = candidate_upload_document_id;
	}
	public Integer getCandidate_id() {
		return candidate_id;
	}
	public void setCandidate_id(Integer candidate_id) {
		this.candidate_id = candidate_id;
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
