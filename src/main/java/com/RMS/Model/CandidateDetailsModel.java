package com.RMS.Model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CandidateDetailsModel {

	private Integer candidate_details_id;
	private Integer candidate_id;
	private String address;
	private String gender;
	private String mobile_no;
	private String telephone_no;
	private Integer country_id;
	private Integer state_id;
	private Integer taluka_id;
	private Integer district_id;
	private Integer city_id;
	private Integer pincode;
	private Date date_of_birth;
	private String personal_email_id;
	private String full_name;
	private String email_id;
	private String linkedln_profile_url;
	private String facebook_profile_url;
	private String twitter_profile_url;
	private String pan_card_no;
	private String aadhar_card_no;
	List<CandidateDetailsModel> candidateDetailsModelList = new ArrayList<CandidateDetailsModel>();

	public Integer getCandidate_details_id() {
		return candidate_details_id;
	}
	public void setCandidate_details_id(Integer candidate_details_id) {
		this.candidate_details_id = candidate_details_id;
	}
	public Integer getCandidate_id() {
		return candidate_id;
	}
	public void setCandidate_id(Integer candidate_id) {
		this.candidate_id = candidate_id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getTelephone_no() {
		return telephone_no;
	}
	public void setTelephone_no(String telephone_no) {
		this.telephone_no = telephone_no;
	}
	public Integer getCountry_id() {
		return country_id;
	}
	public void setCountry_id(Integer country_id) {
		this.country_id = country_id;
	}
	public Integer getState_id() {
		return state_id;
	}
	public void setState_id(Integer state_id) {
		this.state_id = state_id;
	}
	public Integer getTaluka_id() {
		return taluka_id;
	}
	public void setTaluka_id(Integer taluka_id) {
		this.taluka_id = taluka_id;
	}
	public Integer getDistrict_id() {
		return district_id;
	}
	public void setDistrict_id(Integer district_id) {
		this.district_id = district_id;
	}
	public Integer getCity_id() {
		return city_id;
	}
	public void setCity_id(Integer city_id) {
		this.city_id = city_id;
	}
	public Integer getPincode() {
		return pincode;
	}
	public void setPincode(Integer pincode) {
		this.pincode = pincode;
	}
	public Date getDate_of_birth() {
		return date_of_birth;
	}
	public void setDate_of_birth(Date date_of_birth) {
		this.date_of_birth = date_of_birth;
	}
	public String getPersonal_email_id() {
		return personal_email_id;
	}
	public void setPersonal_email_id(String personal_email_id) {
		this.personal_email_id = personal_email_id;
	}
	public String getFull_name() {
		return full_name;
	}
	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getLinkedln_profile_url() {
		return linkedln_profile_url;
	}
	public void setLinkedln_profile_url(String linkedln_profile_url) {
		this.linkedln_profile_url = linkedln_profile_url;
	}
	public String getFacebook_profile_url() {
		return facebook_profile_url;
	}
	public void setFacebook_profile_url(String facebook_profile_url) {
		this.facebook_profile_url = facebook_profile_url;
	}
	public String getTwitter_profile_url() {
		return twitter_profile_url;
	}
	public void setTwitter_profile_url(String twitter_profile_url) {
		this.twitter_profile_url = twitter_profile_url;
	}
	public String getPan_card_no() {
		return pan_card_no;
	}
	public void setPan_card_no(String pan_card_no) {
		this.pan_card_no = pan_card_no;
	}
	public String getAadhar_card_no() {
		return aadhar_card_no;
	}
	public void setAadhar_card_no(String aadhar_card_no) {
		this.aadhar_card_no = aadhar_card_no;
	}
	public List<CandidateDetailsModel> getcandidateDetailsModelList() {
		return candidateDetailsModelList;
	}
	public void setCandidateDetailsModelList(
			List<CandidateDetailsModel> candidateDetailsModelList) {
		this.candidateDetailsModelList = candidateDetailsModelList;
	}
}
