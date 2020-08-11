package com.RMS.Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.CandidateMaster;
import com.RMS.Bean.CityMaster;
import com.RMS.Bean.CompanyMaster;

@Transactional
public interface CompanyRepository extends CrudRepository<CompanyMaster, Integer> {

	@Query("from CompanyMaster where email_id =:email_id and password =:password and deleted='N' and active_inactive='Y' ")
	public CompanyMaster getCompanyMasterByEmailIdPassword(@Param("email_id") String email_id,@Param("password") String password);

	@Query("from CompanyMaster where email_id =:email_id")
	public CompanyMaster getCompanyMasterByEmailId(@Param("email_id") String email_id);

	@Query("from CompanyMaster where company_id =:company_id  and deleted='N' and active_inactive='Y' ")
	public CompanyMaster getCompanyMasterById(@Param("company_id") Integer company_id); 
	
	@Query("from CompanyMaster where deleted='N' and active_inactive='Y' ")
	List<CompanyMaster> getCompanyList();
	
}
