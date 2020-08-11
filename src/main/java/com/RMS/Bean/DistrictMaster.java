package com.RMS.Bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "district_master")
public class DistrictMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="district_id",columnDefinition="int")
	private Integer district_id;
	
	@Column(name = "district")
	private String district;
	
	@Column(name = "deleted")
	private String deleted; // Y=Yes, N=No  Default : N

	public Integer getDistrict_id() {
		return district_id;
	}

	public void setDistrict_id(Integer district_id) {
		this.district_id = district_id;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}
	
}
