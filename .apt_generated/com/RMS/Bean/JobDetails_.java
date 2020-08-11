package com.RMS.Bean;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(JobDetails.class)
public abstract class JobDetails_ {

	public static volatile SingularAttribute<JobDetails, Integer> maximum_salary;
	public static volatile SingularAttribute<JobDetails, Date> joining_date;
	public static volatile SingularAttribute<JobDetails, String> employment_type;
	public static volatile SingularAttribute<JobDetails, Integer> minimum_salary;
	public static volatile SingularAttribute<JobDetails, String> experience;
	public static volatile SingularAttribute<JobDetails, String> deleted;
	public static volatile SingularAttribute<JobDetails, Integer> job_details_id;
	public static volatile SingularAttribute<JobDetails, String> job_name;
	public static volatile SingularAttribute<JobDetails, String> job_description;
	public static volatile SingularAttribute<JobDetails, CompanyMaster> companyMaster;
	public static volatile SingularAttribute<JobDetails, String> time_duration;
	public static volatile SingularAttribute<JobDetails, String> location;
	public static volatile SingularAttribute<JobDetails, Integer> required_candidates;

}

