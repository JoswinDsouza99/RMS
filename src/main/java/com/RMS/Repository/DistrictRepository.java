package com.RMS.Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.DistrictMaster;

@Transactional
public interface DistrictRepository extends CrudRepository<DistrictMaster, Integer> {

	@Query("from DistrictMaster where deleted='N'")
	List<DistrictMaster> getAllDistrictList();
	
	@Query("from DistrictMaster where district_id = :district_id and deleted='N'")
	DistrictMaster getDistrictById(@Param("district_id") Integer district_id);
	}

