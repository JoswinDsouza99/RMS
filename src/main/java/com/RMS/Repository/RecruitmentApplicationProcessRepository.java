package com.RMS.Repository;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.RecruitmentApplicationProcess;
import com.RMS.Model.RecruitmentApplicationProcessModel;

	@Transactional
	public interface RecruitmentApplicationProcessRepository extends CrudRepository<RecruitmentApplicationProcess, Integer> {
			
		@Query("from RecruitmentApplicationProcess where candidateMaster.candidate_id = :candidate_id and companyMaster.company_id =:company_id and "
				+ "jobDetails.job_details_id =:job_details_id and status =:status")
		List<RecruitmentApplicationProcess> getRecruitmentApplicationProcessDetailsByCandidateId(@Param("candidate_id") Integer candidate_id,@Param("company_id") Integer company_id,
				@Param("job_details_id") Integer job_details_id,@Param("status") String Status);

		@Query("from RecruitmentApplicationProcess where candidateMaster.candidate_id = :candidate_id and status =:status ")
		List<RecruitmentApplicationProcess> getJobApplicationListBYCandidateId_Status(@Param("candidate_id") Integer candidate_id,@Param("status") String Status);
		
		 @Query("select count(*) from RecruitmentApplicationProcess where candidateMaster.candidate_id = :candidate_id and status =:status")
		 long getJobCountBYCandidateId_Status(@Param("candidate_id") Integer candidate_id,@Param("status") String Status);
		
		 @Query("from RecruitmentApplicationProcess where companyMaster.company_id = :company_id and status =:status ")
		 List<RecruitmentApplicationProcess> getJobApplicationListBYCompanyId_Status(@Param("company_id") Integer company_id,@Param("status") String Status);
		 
		 @Query("select count(*) from RecruitmentApplicationProcess where companyMaster.company_id = :company_id and status =:status")
		 long getJobCountBYCompanyId_Status(@Param("company_id") Integer company_id,@Param("status") String Status);
		 		
		 @Query("from RecruitmentApplicationProcess where candidateMaster.candidate_id = :candidate_id and status =:status ")
		RecruitmentApplicationProcess getJobApplicationBYCandidateId_Status(@Param("candidate_id") Integer candidate_id,@Param("status") String Status);
		 
		 @Query("from RecruitmentApplicationProcess where companyMaster.company_id = :company_id")
		 List<RecruitmentApplicationProcess> getTotalJobApplicationListBYCompanyId(@Param("company_id") Integer company_id);
		 
		 @Query("select count(*) from RecruitmentApplicationProcess where companyMaster.company_id = :company_id ")
		 long getTotalJobCountBYCompanyId(@Param("company_id") Integer company_id);
		 
		 @Query("from RecruitmentApplicationProcess where recruitment_application_process_id = :recruitment_application_process_id ")
		RecruitmentApplicationProcess getRecruitmentApplicationProcessById(@Param("recruitment_application_process_id") Integer recruitment_application_process_id);
		 
		 @Query("from RecruitmentApplicationProcess where candidateMaster.candidate_id = :candidate_id and companyMaster.company_id = :company_id and jobDetails.job_details_id =:job_details_id ")
			RecruitmentApplicationProcess getJobApplicationBYCandidateId_CompanyId_JobDetailId(@Param("candidate_id") Integer candidate_id,@Param("company_id") Integer company_id,@Param("job_details_id") Integer job_details_id);
			 
			
	}
