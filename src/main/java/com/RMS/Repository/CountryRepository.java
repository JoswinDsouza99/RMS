package com.RMS.Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.CountryMaster;

@Transactional
public interface CountryRepository extends CrudRepository<CountryMaster, Integer> {

	@Query("from CountryMaster where deleted='N'")
	List<CountryMaster> getAllCountryList();
	
	@Query("from CountryMaster where country_id = :country_id and deleted='N'")
	
	CountryMaster getCountryById(@Param("country_id") Integer country_id);
	
}
