package com.RMS.Bean;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(CandidateDetails.class)
public abstract class CandidateDetails_ {

	public static volatile SingularAttribute<CandidateDetails, Integer> pincode;
	public static volatile SingularAttribute<CandidateDetails, String> address;
	public static volatile SingularAttribute<CandidateDetails, String> gender;
	public static volatile SingularAttribute<CandidateDetails, Date> date_of_birth;
	public static volatile SingularAttribute<CandidateDetails, String> mobile_no;
	public static volatile SingularAttribute<CandidateDetails, CityMaster> cityMaster;
	public static volatile SingularAttribute<CandidateDetails, Integer> candidate_details_id;
	public static volatile SingularAttribute<CandidateDetails, CountryMaster> countryMaster;
	public static volatile SingularAttribute<CandidateDetails, String> facebook_profile_url;
	public static volatile SingularAttribute<CandidateDetails, StateMaster> stateMaster;
	public static volatile SingularAttribute<CandidateDetails, String> pan_card_no;
	public static volatile SingularAttribute<CandidateDetails, String> telephone_no;
	public static volatile SingularAttribute<CandidateDetails, CandidateMaster> candidateMaster;
	public static volatile SingularAttribute<CandidateDetails, String> linkedln_profile_url;
	public static volatile SingularAttribute<CandidateDetails, String> twitter_profile_url;
	public static volatile SingularAttribute<CandidateDetails, TalukaMaster> talukaMaster;
	public static volatile SingularAttribute<CandidateDetails, String> aadhar_card_no;
	public static volatile SingularAttribute<CandidateDetails, DistrictMaster> districtMaster;
	public static volatile SingularAttribute<CandidateDetails, String> personal_email_id;

}

