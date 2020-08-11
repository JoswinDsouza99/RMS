package com.RMS.Repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.CandidateUploadDocument;

@Transactional
public interface CandidateUploadDocumentRepository extends CrudRepository<CandidateUploadDocument, Integer> {
	
	@Query("from CandidateUploadDocument where candidateMaster.candidate_id = :candidate_id")
	CandidateUploadDocument getCandidateUploadDocumentByCandidateId(@Param("candidate_id") Integer candidate_id);

}
