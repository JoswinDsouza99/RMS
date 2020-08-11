package com.RMS.Repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.CandidateMaster;

@Transactional
public interface CandidateRepository extends CrudRepository<CandidateMaster, Integer> {
	
	@Query("from CandidateMaster where email_id =:email_id and password =:password and deleted='N' and active_inactive='Y' ")
	public CandidateMaster getCandidateMasterByEmailIdPassword(@Param("email_id") String email_id,@Param("password") String password);
	
	@Query("from CandidateMaster where email_id =:email_id ")
	public CandidateMaster getCandidateMasterByEmailId(@Param("email_id") String email_id);
	
	@Query("from CandidateMaster where candidate_id =:candidate_id  and deleted='N' and active_inactive='Y' ")
	public CandidateMaster getCandidateMasterById(@Param("candidate_id") Integer candidate_id);
	
	@Query("select count(*) from CandidateMaster where deleted='N' and active_inactive='Y' ")
	public Integer getCandidateCount();

	
}
