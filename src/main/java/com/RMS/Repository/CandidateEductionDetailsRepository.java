package com.RMS.Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.CandidateEductionDetails;

@Transactional
public interface CandidateEductionDetailsRepository extends CrudRepository<CandidateEductionDetails, Integer> {

	@Query("from CandidateEductionDetails where candidateMaster.candidate_id = :candidate_id ")
	List<CandidateEductionDetails> getCandidateEductionDetailsByCandidateId(@Param ("candidate_id") Integer candidate_id);
	
	@Query("from CandidateEductionDetails where candidate_eduction_detail_id = :candidate_eduction_detail_id")
	List<CandidateEductionDetails> getCandidateEductionDetailsById(@Param ("candidate_eduction_detail_id") Integer candidate_eduction_detail_id);
	
	
}
