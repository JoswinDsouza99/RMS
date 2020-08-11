package com.RMS.Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.CityMaster;

@Transactional
public interface CityRepository extends CrudRepository<CityMaster, Integer> {

	@Query("from CityMaster where deleted='N'")
	List<CityMaster> getAllCityList();
	
	@Query("from CityMaster where city_id =:city_id and deleted='N'")
	CityMaster getCityBYId(@Param("city_id") Integer city_id);
	
}
