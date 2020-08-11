package com.RMS.Model;

import java.util.ArrayList;
import java.util.List;

public class CandidateSkillDetailsModel {

	private Integer candidate_skill_detail_id;
	private Integer candidate_id;
	private String skill;
	private String description;
	private Integer skillProficiency;
	List<CandidateSkillDetailsModel> candidateSkillDetailsModelsList = new ArrayList<CandidateSkillDetailsModel>();

	
	
	
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
	public Integer getCandidate_id() {
		return candidate_id;
	}
	public void setCandidate_id(Integer candidate_id) {
		this.candidate_id = candidate_id;
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
	public List<CandidateSkillDetailsModel> getCandidateSkillDetailsModelsList() {
		return candidateSkillDetailsModelsList;
	}
	public void setCandidateSkillDetailsModelsList(List<CandidateSkillDetailsModel> candidateSkillDetailsModelsList) {
		this.candidateSkillDetailsModelsList = candidateSkillDetailsModelsList;
	}
	
}
