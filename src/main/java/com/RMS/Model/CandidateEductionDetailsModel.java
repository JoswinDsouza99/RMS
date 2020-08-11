package com.RMS.Model;

import java.util.ArrayList;
import java.util.List;

public class CandidateEductionDetailsModel {

	private Integer candidate_eduction_detail_id;
	private Integer candidate_id;
	private String collage_name;
	private String eduction;
	private String university_inititute;
	private Integer passing_year;
	private Double percantage;
	List<CandidateEductionDetailsModel> candidateEductionDetailsModelList = new ArrayList<CandidateEductionDetailsModel>();
	
	public Integer getCandidate_eduction_detail_id() {
		return candidate_eduction_detail_id;
	}
	public void setCandidate_eduction_detail_id(Integer candidate_eduction_detail_id) {
		this.candidate_eduction_detail_id = candidate_eduction_detail_id;
	}
	public Integer getCandidate_id() {
		return candidate_id;
	}
	public void setCandidate_id(Integer candidate_id) {
		this.candidate_id = candidate_id;
	}
	public String getCollage_name() {
		return collage_name;
	}
	public void setCollage_name(String collage_name) {
		this.collage_name = collage_name;
	}
	public String getEduction() {
		return eduction;
	}
	public void setEduction(String eduction) {
		this.eduction = eduction;
	}
	public Integer getPassing_year() {
		return passing_year;
	}
	public void setPassing_year(Integer passing_year) {
		this.passing_year = passing_year;
	}
	public Double getPercantage() {
		return percantage;
	}
	public void setPercantage(Double percantage) {
		this.percantage = percantage;
	}
	public List<CandidateEductionDetailsModel> getCandidateEductionDetailsModelList() {
		return candidateEductionDetailsModelList;
	}
	public void setCandidateEductionDetailsModelList(
			List<CandidateEductionDetailsModel> candidateEductionDetailsModelList) {
		this.candidateEductionDetailsModelList = candidateEductionDetailsModelList;
	}
	public String getUniversity_inititute() {
		return university_inititute;
	}
	public void setUniversity_inititute(String university_inititute) {
		this.university_inititute = university_inititute;
	}
}
