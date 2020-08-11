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
@Table(name="candidate_deatils")
public class CandidateDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="candidate_details_id",columnDefinition="int")
	private Integer candidate_details_id;
	
	@OneToOne
	@JoinColumn(name = "candidate_id",columnDefinition="int")
	private CandidateMaster candidateMaster;
	
	@Column(name="address")
	private String address;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="mobile_no")
	private String mobile_no;
	
	@Column(name="telephone_no")
	private String telephone_no;
	
	@OneToOne
	@JoinColumn(name = "country_id",columnDefinition="int")
	private CountryMaster countryMaster;
	
	@OneToOne
	@JoinColumn(name = "state_id",columnDefinition="int")
	private StateMaster stateMaster;
	
	@OneToOne
	@JoinColumn(name = "taluka_id",columnDefinition="int")
	private TalukaMaster talukaMaster;
	
	@OneToOne
	@JoinColumn(name = "district_id",columnDefinition="int")
	private DistrictMaster districtMaster;
	
	@OneToOne
	@JoinColumn(name = "city_id",columnDefinition="int")
	private CityMaster cityMaster;
	
	@Column(name="pincode")
	private Integer pincode;
	
	@Column(name="date_of_birth")
	private Date date_of_birth;
	
	@Column(name="linkedln_profile_url")
	private String linkedln_profile_url;
	
	@Column(name="facebook_profile_url")
	private String facebook_profile_url;
	
	@Column(name="twitter_profile_url")
	private String twitter_profile_url;
	
	@Column(name="pan_card_no")
	private String pan_card_no;
	
	@Column(name="aadhar_card_no")
	private String aadhar_card_no;
	
	@Column(name="personal_email_id")
	private String personal_email_id;
	
	public Integer getCandidate_details_id() {
		return candidate_details_id;
	}

	public void setCandidate_details_id(Integer candidate_details_id) {
		this.candidate_details_id = candidate_details_id;
	}

	public CandidateMaster getCandidateMaster() {
		return candidateMaster;
	}

	public void setCandidateMaster(CandidateMaster candidateMaster) {
		this.candidateMaster = candidateMaster;
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

	public CountryMaster getCountryMaster() {
		return countryMaster;
	}

	public void setCountryMaster(CountryMaster countryMaster) {
		this.countryMaster = countryMaster;
	}

	public StateMaster getStateMaster() {
		return stateMaster;
	}

	public void setStateMaster(StateMaster stateMaster) {
		this.stateMaster = stateMaster;
	}

	public TalukaMaster getTalukaMaster() {
		return talukaMaster;
	}

	public void setTalukaMaster(TalukaMaster talukaMaster) {
		this.talukaMaster = talukaMaster;
	}

	public DistrictMaster getDistrictMaster() {
		return districtMaster;
	}

	public void setDistrictMaster(DistrictMaster districtMaster) {
		this.districtMaster = districtMaster;
	}

	public CityMaster getCityMaster() {
		return cityMaster;
	}

	public void setCityMaster(CityMaster cityMaster) {
		this.cityMaster = cityMaster;
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
	
}
