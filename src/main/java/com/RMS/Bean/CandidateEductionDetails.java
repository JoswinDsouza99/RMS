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
@Table(name="candidate_eduction_details")
public class CandidateEductionDetails  {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="candidate_eduction_detail_id",columnDefinition="int")
	private Integer candidate_eduction_detail_id;
	
	@OneToOne
	@JoinColumn(name = "candidate_id",columnDefinition="int")
	private CandidateMaster candidateMaster;
	
	@Column(name="collage_name")
	private String collage_name;
	
	@Column(name="eduction")
	private String eduction;
	
	@Column(name="university_inititute")
	private String university_inititute;
	
	@Column(name="passing_year")
	private Integer passing_year;
	
	@Column(name="percantage")
	private Double percantage;
	
	public Integer getCandidate_eduction_detail_id() {
		return candidate_eduction_detail_id;
	}

	public void setCandidate_eduction_detail_id(Integer candidate_eduction_detail_id) {
		this.candidate_eduction_detail_id = candidate_eduction_detail_id;
	}

	public CandidateMaster getCandidateMaster() {
		return candidateMaster;
	}

	public void setCandidateMaster(CandidateMaster candidateMaster) {
		this.candidateMaster = candidateMaster;
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

	public String getUniversity_inititute() {
		return university_inititute;
	}

	public void setUniversity_inititute(String university_inititute) {
		this.university_inititute = university_inititute;
	}

}
