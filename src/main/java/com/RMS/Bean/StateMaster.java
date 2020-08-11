package com.RMS.Bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "state_master")
public class StateMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="state_id",columnDefinition="int")
	private Integer state_id;
	
	@Column(name = "state", length=30)
	private String state;
	
	@Column(name = "deleted")
	private String deleted; // Y=Yes, N=No  Default : N

	public Integer getState_id() {
		return state_id;
	}

	public void setState_id(Integer state_id) {
		this.state_id = state_id;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}
	
}
