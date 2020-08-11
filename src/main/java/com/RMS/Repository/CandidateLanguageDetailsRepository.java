package com.RMS.Repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.CandidateLanguageDetails;

@Transactional
public interface CandidateLanguageDetailsRepository extends CrudRepository<CandidateLanguageDetails, Integer> {

	@Query("from CandidateLanguageDetails where candidateMaster.candidate_id = :candidate_id")
	CandidateLanguageDetails getCandidateLanguageDetailsByCandidateId(@Param("candidate_id") Integer candidate_id);
}
