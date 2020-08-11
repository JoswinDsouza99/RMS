package com.RMS.Model;

import java.util.ArrayList;
import java.util.List;

public class CandidateLanguageDetailModel {

	private Integer candidate_language_detail_id;
	private Integer candidate_id;
	private boolean gujarati_write=false;
	private boolean gujarati_read=false;
	private boolean gujarati_speak=false;
	private boolean hindi_write=false;
	private boolean hindi_read=false;
	private boolean hindi_speak=false;
	private boolean english_write=false;
	private boolean english_read=false;
	private boolean english_speak=false;
	private List<CandidateLanguageDetailModel> candidateLanguageDetailsModelList = new ArrayList<CandidateLanguageDetailModel>();

	public Integer getCandidate_language_detail_id() {
		return candidate_language_detail_id;
	}
	public void setCandidate_language_detail_id(Integer candidate_language_detail_id) {
		this.candidate_language_detail_id = candidate_language_detail_id;
	}
	public Integer getCandidate_id() {
		return candidate_id;
	}
	public void setCandidate_id(Integer candidate_id) {
		this.candidate_id = candidate_id;
	}
	public boolean isGujarati_write() {
		return gujarati_write;
	}
	public void setGujarati_write(boolean gujarati_write) {
		this.gujarati_write = gujarati_write;
	}
	public boolean isGujarati_read() {
		return gujarati_read;
	}
	public void setGujarati_read(boolean gujarati_read) {
		this.gujarati_read = gujarati_read;
	}
	public boolean isGujarati_speak() {
		return gujarati_speak;
	}
	public void setGujarati_speak(boolean gujarati_speak) {
		this.gujarati_speak = gujarati_speak;
	}
	public boolean isHindi_write() {
		return hindi_write;
	}
	public void setHindi_write(boolean hindi_write) {
		this.hindi_write = hindi_write;
	}
	public boolean isHindi_read() {
		return hindi_read;
	}
	public void setHindi_read(boolean hindi_read) {
		this.hindi_read = hindi_read;
	}
	public boolean isHindi_speak() {
		return hindi_speak;
	}
	public void setHindi_speak(boolean hindi_speak) {
		this.hindi_speak = hindi_speak;
	}
	public boolean isEnglish_write() {
		return english_write;
	}
	public void setEnglish_write(boolean english_write) {
		this.english_write = english_write;
	}
	public boolean isEnglish_read() {
		return english_read;
	}
	public void setEnglish_read(boolean english_read) {
		this.english_read = english_read;
	}
	public boolean isEnglish_speak() {
		return english_speak;
	}
	public void setEnglish_speak(boolean english_speak) {
		this.english_speak = english_speak;
	}
	public List<CandidateLanguageDetailModel> getCandidateLanguageDetailsModelList() {
		return candidateLanguageDetailsModelList;
	}
	public void setCandidateLanguageDetailsModelList(List<CandidateLanguageDetailModel> candidateLanguageDetailsModelList) {
		this.candidateLanguageDetailsModelList = candidateLanguageDetailsModelList;
	}
	
}
