
package com.RMS.Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.RMS.Bean.CandidateSkillDetails;
@Transactional
public interface CandidateSkillDetailsRepository extends CrudRepository<CandidateSkillDetails, Integer> {

	@Query("from CandidateSkillDetails where candidateMaster.candidate_id = :candidate_id ")
	List<CandidateSkillDetails> getCandidateSkillDetailsByCandidateId(@Param("candidate_id") Integer candidate_id);
}
