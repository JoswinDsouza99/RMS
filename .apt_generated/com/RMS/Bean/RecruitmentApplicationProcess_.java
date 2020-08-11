package com.RMS.Bean;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(RecruitmentApplicationProcess.class)
public abstract class RecruitmentApplicationProcess_ {

	public static volatile SingularAttribute<RecruitmentApplicationProcess, Integer> recruitment_application_process_id;
	public static volatile SingularAttribute<RecruitmentApplicationProcess, CandidateMaster> candidateMaster;
	public static volatile SingularAttribute<RecruitmentApplicationProcess, CompanyMaster> companyMaster;
	public static volatile SingularAttribute<RecruitmentApplicationProcess, Date> application_date;
	public static volatile SingularAttribute<RecruitmentApplicationProcess, Date> approve_reject_date;
	public static volatile SingularAttribute<RecruitmentApplicationProcess, String> comment;
	public static volatile SingularAttribute<RecruitmentApplicationProcess, JobDetails> jobDetails;
	public static volatile SingularAttribute<RecruitmentApplicationProcess, String> status;

}

