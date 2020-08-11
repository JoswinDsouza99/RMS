package com.RMS.Bean;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(CandidateMaster.class)
public abstract class CandidateMaster_ {

	public static volatile SingularAttribute<CandidateMaster, Integer> candidate_id;
	public static volatile SingularAttribute<CandidateMaster, String> email_id;
	public static volatile SingularAttribute<CandidateMaster, String> active_inactive;
	public static volatile SingularAttribute<CandidateMaster, String> password;
	public static volatile SingularAttribute<CandidateMaster, String> full_name;
	public static volatile SingularAttribute<CandidateMaster, String> deleted;
	public static volatile SingularAttribute<CandidateMaster, Date> registration_date;

}

