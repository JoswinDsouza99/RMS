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
@Table(name="candidate_skill_details")
public class CandidateSkillDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="candidate_skill_detail_id",columnDefinition="int")
	private Integer candidate_skill_detail_id;
	
	@OneToOne
	@JoinColumn(name = "candidate_id",columnDefinition="int")
	private CandidateMaster candidateMaster;
	
	@Column(name="skill")
	private String skill;
	
	@Column(name="description")
	private String description;
	
	@Column(name="skillProficiency")
	private Integer skillProficiency;
	
	
	

	public Integer getSkillProficiency() {
		return skillProficiency;
	}

	public void setSkillProficiency(Integer skillProficiency) {
		this.skillProficiency = skillProficiency;
	}

	public Integer getCandidate_skill_detail_id() {
		return candidate_skill_detail_id;
	}

	public void setCandidate_skill_detail_id(Integer candidate_skill_detail_id) {
		this.candidate_skill_detail_id = candidate_skill_detail_id;
	}

	public CandidateMaster getCandidateMaster() {
		return candidateMaster;
	}

	public void setCandidateMaster(CandidateMaster candidateMaster) {
		this.candidateMaster = candidateMaster;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
