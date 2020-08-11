package com.RMS.Bean;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(CompanyJobDetails.class)
public abstract class CompanyJobDetails_ {

	public static volatile SingularAttribute<CompanyJobDetails, Integer> maximum_salary;
	public static volatile SingularAttribute<CompanyJobDetails, Date> joining_date;
	public static volatile SingularAttribute<CompanyJobDetails, String> employment_type;
	public static volatile SingularAttribute<CompanyJobDetails, Integer> applied;
	public static volatile SingularAttribute<CompanyJobDetails, Integer> minimum_salary;
	public static volatile SingularAttribute<CompanyJobDetails, String> experience;
	public static volatile SingularAttribute<CompanyJobDetails, Integer> job_details_id;
	public static volatile SingularAttribute<CompanyJobDetails, String> job_name;
	public static volatile SingularAttribute<CompanyJobDetails, String> job_description;
	public static volatile SingularAttribute<CompanyJobDetails, CompanyMaster> companyMaster;
	public static volatile SingularAttribute<CompanyJobDetails, String> time_duration;
	public static volatile SingularAttribute<CompanyJobDetails, String> location;
	public static volatile SingularAttribute<CompanyJobDetails, Integer> required_candidates;

}

