package com.RMS.Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.CandidateDetails;
import com.RMS.Bean.CompanyBasicDetails;
import com.RMS.Bean.CompanyMaster;
import com.RMS.Bean.JobDetails;

@Transactional
public interface CompanyBasicDetailsRepository extends CrudRepository<CompanyBasicDetails, Integer> {
	
	@Query("from CompanyBasicDetails where companyMaster.company_id =:company_id")
	CompanyBasicDetails getCompanyBasicDetailsByCompanyId(@Param("company_id") Integer company_id);
	
	@Query("from CompanyBasicDetails where month(companyMaster.registration_date) =:month and year(companyMaster.registration_date) =:year and companyMaster.deleted='N' and companyMaster.active_inactive='Y' ")
	public List<CompanyBasicDetails> getCompanyMasterListByMonthAndYear(@Param("month") Integer month,@Param("year") Integer year);
	
	 
	 
	
}
