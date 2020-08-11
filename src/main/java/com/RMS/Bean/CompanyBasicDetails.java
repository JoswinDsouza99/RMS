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
@Table(name = "company_basic_details")
public class CompanyBasicDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="company_basic_details_id",columnDefinition="int")
	private Integer company_basic_details_id;
	
	@OneToOne
	@JoinColumn(name = "company_id",columnDefinition="int")
	private CompanyMaster companyMaster;
	
	@Column(name="address")
	private String address;
	
	@Column(name="company_description")
	private String company_description;
	
	@OneToOne
	@JoinColumn(name="country_id")
	private CountryMaster countryMaster;
	
	@OneToOne
	@JoinColumn(name="state_id")
	private StateMaster stateMaster;

	@OneToOne
	@JoinColumn(name="district_id")
	private DistrictMaster districtMaster;
	
	@OneToOne
	@JoinColumn(name="taluka_id")
	private TalukaMaster talukaMaster;
	
	@OneToOne
	@JoinColumn(name="city_id")
	private CityMaster cityMaster;
	
	@Column(name="pincode")
	private Integer pincode;
	
	@Column(name="mobile_no")
	private Integer mobile_no;
	
	@Column(name="telephone_no")
	private Integer telephone_no;
	
	@Column(name="linkedin_profile_url")
	private String linkedin_profile_url;
	
	@Column(name="facebook_profile_url")
	private String facebook_profile_url;
	
	@Column(name="twitter_profile_url")
	private String twitter_profile_url;
	
	@Column(name="company_website")
	private String company_website;	
	
	@Column(name="pan_card_no")
	private Integer pan_card_no;

	public Integer getCompany_basic_details_id() {
		return company_basic_details_id;
	}

	public void setCompany_basic_details_id(Integer company_basic_details_id) {
		this.company_basic_details_id = company_basic_details_id;
	}

	public CompanyMaster getCompanyMaster() {
		return companyMaster;
	}

	public void setCompanyMaster(CompanyMaster companyMaster) {
		this.companyMaster = companyMaster;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getCompany_description() {
		return company_description;
	}

	public void setCompany_description(String company_description) {
		this.company_description = company_description;
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

	public DistrictMaster getDistrictMaster() {
		return districtMaster;
	}

	public void setDistrictMaster(DistrictMaster districtMaster) {
		this.districtMaster = districtMaster;
	}

	public String getCompany_website() {
		return company_website;
	}

	public void setCompany_website(String company_website) {
		this.company_website = company_website;
	}

	public TalukaMaster getTalukaMaster() {
		return talukaMaster;
	}

	public void setTalukaMaster(TalukaMaster talukaMaster) {
		this.talukaMaster = talukaMaster;
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

	public Integer getMobile_no() {
		return mobile_no;
	}

	public void setMobile_no(Integer mobile_no) {
		this.mobile_no = mobile_no;
	}

	public Integer getTelephone_no() {
		return telephone_no;
	}

	public void setTelephone_no(Integer telephone_no) {
		this.telephone_no = telephone_no;
	}

	public String getLinkedin_profile_url() {
		return linkedin_profile_url;
	}

	public void setLinkedin_profile_url(String linkedin_profile_url) {
		this.linkedin_profile_url = linkedin_profile_url;
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

	public Integer getPan_card_no() {
		return pan_card_no;
	}

	public void setPan_card_no(Integer pan_card_no) {
		this.pan_card_no = pan_card_no;
	}

	public void setEmail_id(String email_id) {
		// TODO Auto-generated method stub
		
	}

	public void setCompany_reg_no(String company_reg_no) {
		// TODO Auto-generated method stub
		
	}
	
	
}