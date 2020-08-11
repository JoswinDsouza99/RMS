package com.RMS.Bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "country_master")
public class CountryMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="country_id",columnDefinition="int")
	private Integer country_id;
	
	@Column(name = "country")
	private String country;
	
	@Column(name = "deleted")
	private String deleted; // Y=Yes, N=No  Default : N

	public Integer getCountry_id() {
		return country_id;
	}

	public void setCountry_id(Integer country_id) {
		this.country_id = country_id;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}
	
}
