package com.RMS.Bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "taluka_master")
public class TalukaMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="taluka_id",columnDefinition="int")
	private Integer taluka_id;
	
	@Column(name = "taluka")
	private String taluka;
	
	@Column(name = "deleted")
	private String deleted; // Y=Yes, N=No  Default : N

	public Integer getTaluka_id() {
		return taluka_id;
	}

	public void setTaluka_id(Integer taluka_id) {
		this.taluka_id = taluka_id;
	}

	public String getTaluka() {
		return taluka;
	}

	public void setTaluka(String taluka) {
		this.taluka = taluka;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}
}
