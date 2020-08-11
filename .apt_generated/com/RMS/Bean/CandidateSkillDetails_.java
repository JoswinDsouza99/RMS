package com.RMS.Bean;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(CandidateSkillDetails.class)
public abstract class CandidateSkillDetails_ {

	public static volatile SingularAttribute<CandidateSkillDetails, Integer> candidate_skill_detail_id;
	public static volatile SingularAttribute<CandidateSkillDetails, CandidateMaster> candidateMaster;
	public static volatile SingularAttribute<CandidateSkillDetails, Integer> skillProficiency;
	public static volatile SingularAttribute<CandidateSkillDetails, String> skill;
	public static volatile SingularAttribute<CandidateSkillDetails, String> description;

}

