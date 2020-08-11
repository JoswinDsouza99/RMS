package com.RMS.Bean;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(CompanyMaster.class)
public abstract class CompanyMaster_ {

	public static volatile SingularAttribute<CompanyMaster, String> email_id;
	public static volatile SingularAttribute<CompanyMaster, String> active_inactive;
	public static volatile SingularAttribute<CompanyMaster, String> password;
	public static volatile SingularAttribute<CompanyMaster, String> deleted;
	public static volatile SingularAttribute<CompanyMaster, Date> registration_date;
	public static volatile SingularAttribute<CompanyMaster, Integer> company_id;
	public static volatile SingularAttribute<CompanyMaster, String> company_reg_no;
	public static volatile SingularAttribute<CompanyMaster, String> company_name;

}

