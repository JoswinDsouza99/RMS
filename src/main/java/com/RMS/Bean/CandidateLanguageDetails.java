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
@Table(name="candidate_language_details")
public class CandidateLanguageDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="candidate_language_detail_id",columnDefinition="int")
	private Integer candidate_language_detail_id;
	
	@OneToOne
	@JoinColumn(name = "candidate_id",columnDefinition="int")
	private CandidateMaster candidateMaster;
	
	@Column(name="gujarati_write")
	private String gujarati_write;
	
	@Column(name="gujarati_read")
	private String gujarati_read;
	
	@Column(name="gujarati_speak")
	private String gujarati_speak;
	
	@Column(name="hindi_write")
	private String hindi_write;
	
	@Column(name="hindi_read")
	private String hindi_read;
	
	@Column(name="hindi_speak")
	private String hindi_speak;
	
	@Column(name="english_write")
	private String english_write;
	
	@Column(name="english_read")
	private String english_read;
	
	@Column(name="english_speak")
	private String english_speak;

	public Integer getCandidate_language_detail_id() {
		return candidate_language_detail_id;
	}

	public void setCandidate_language_detail_id(Integer candidate_language_detail_id) {
		this.candidate_language_detail_id = candidate_language_detail_id;
	}

	public CandidateMaster getCandidateMaster() {
		return candidateMaster;
	}

	public void setCandidateMaster(CandidateMaster candidateMaster) {
		this.candidateMaster = candidateMaster;
	}

	public String getGujarati_write() {
		return gujarati_write;
	}

	public void setGujarati_write(String gujarati_write) {
		this.gujarati_write = gujarati_write;
	}

	public String getGujarati_read() {
		return gujarati_read;
	}

	public void setGujarati_read(String gujarati_read) {
		this.gujarati_read = gujarati_read;
	}

	public String getGujarati_speak() {
		return gujarati_speak;
	}

	public void setGujarati_speak(String gujarati_speak) {
		this.gujarati_speak = gujarati_speak;
	}

	public String getHindi_write() {
		return hindi_write;
	}

	public void setHindi_write(String hindi_write) {
		this.hindi_write = hindi_write;
	}

	public String getHindi_read() {
		return hindi_read;
	}

	public void setHindi_read(String hindi_read) {
		this.hindi_read = hindi_read;
	}

	public String getHindi_speak() {
		return hindi_speak;
	}

	public void setHindi_speak(String hindi_speak) {
		this.hindi_speak = hindi_speak;
	}

	public String getEnglish_write() {
		return english_write;
	}

	public void setEnglish_write(String english_write) {
		this.english_write = english_write;
	}

	public String getEnglish_read() {
		return english_read;
	}

	public void setEnglish_read(String english_read) {
		this.english_read = english_read;
	}

	public String getEnglish_speak() {
		return english_speak;
	}

	public void setEnglish_speak(String english_speak) {
		this.english_speak = english_speak;
	}
}
