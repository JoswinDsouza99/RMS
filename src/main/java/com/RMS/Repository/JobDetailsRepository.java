package com.RMS.Repository;

import java.util.List;

import javax.print.attribute.standard.JobName;
import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.CandidateDetails;
import com.RMS.Bean.CityMaster;
import com.RMS.Bean.JobDetails;

@Transactional
public interface JobDetailsRepository extends CrudRepository<JobDetails, Integer>  {

	
	 @Query("from JobDetails where companyMaster.company_id =:company_id")
	 JobDetails getJobDetailsByCompanyId(@Param("company_id") Integer company_id);


	 @Query("from JobDetails where job_details_id =:job_details_id")
	 JobDetails getJobDetailsById(@Param("job_details_id") Integer job_details_id);
	 
	 @Query("from JobDetails where deleted='N' ")
	 List<JobDetails> getAllJobDetails();
	 
	 @Query("select count(*) from JobDetails")
	 public Integer getJobCount();
	 
	 @Query("select job_name from JobDetails ")
	List<JobDetails> getAllJobnameList(@Param("job_details_id") String job_name);
	 
	 @Query(" from JobDetails where companyMaster.company_id =:company_id and deleted='N' ")
	List<JobDetails> getJobTitleByCompanyId(@Param("company_id") Integer company_id);
	 
	 @Query("from JobDetails where status =:status")
	 public List<JobDetails> getJobStatus(@Param("status") String status);
	 
	 @Query("from JobDetails where deleted='N' ")
	 public String getDeleted();
	
}
	

	

