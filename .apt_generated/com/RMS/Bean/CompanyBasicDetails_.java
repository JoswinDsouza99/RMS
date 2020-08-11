package com.RMS.Bean;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(CompanyBasicDetails.class)
public abstract class CompanyBasicDetails_ {

	public static volatile SingularAttribute<CompanyBasicDetails, Integer> pincode;
	public static volatile SingularAttribute<CompanyBasicDetails, String> address;
	public static volatile SingularAttribute<CompanyBasicDetails, String> company_website;
	public static volatile SingularAttribute<CompanyBasicDetails, Integer> mobile_no;
	public static volatile SingularAttribute<CompanyBasicDetails, CityMaster> cityMaster;
	public static volatile SingularAttribute<CompanyBasicDetails, CountryMaster> countryMaster;
	public static volatile SingularAttribute<CompanyBasicDetails, String> facebook_profile_url;
	public static volatile SingularAttribute<CompanyBasicDetails, StateMaster> stateMaster;
	public static volatile SingularAttribute<CompanyBasicDetails, String> company_description;
	public static volatile SingularAttribute<CompanyBasicDetails, Integer> pan_card_no;
	public static volatile SingularAttribute<CompanyBasicDetails, Integer> telephone_no;
	public static volatile SingularAttribute<CompanyBasicDetails, CompanyMaster> companyMaster;
	public static volatile SingularAttribute<CompanyBasicDetails, Integer> company_basic_details_id;
	public static volatile SingularAttribute<CompanyBasicDetails, String> twitter_profile_url;
	public static volatile SingularAttribute<CompanyBasicDetails, TalukaMaster> talukaMaster;
	public static volatile SingularAttribute<CompanyBasicDetails, DistrictMaster> districtMaster;
	public static volatile SingularAttribute<CompanyBasicDetails, String> linkedin_profile_url;

}

