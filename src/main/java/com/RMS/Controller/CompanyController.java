package com.RMS.Controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import com.RMS.Bean.CompanyBasicDetails;
import com.RMS.Bean.CompanyMaster;
import com.RMS.Bean.JobDetails;
import com.RMS.Bean.RecruitmentApplicationProcess;
import com.RMS.Model.CandidateAndCompanyModel;
import com.RMS.Model.CandidateDetailsModel;
import com.RMS.Model.CandidateEductionDetailsModel;
import com.RMS.Model.CandidateLanguageDetailModel;
import com.RMS.Model.CandidateSkillDetailsModel;
import com.RMS.Model.CandidateUploadDocumentModel;
import com.RMS.Model.CompanyBasicDetailsModel;
import com.RMS.Model.JobDetailsModel;
import com.RMS.Model.RecruitmentApplicationProcessModel;
import com.RMS.Repository.CandidateDetailsRepository;
import com.RMS.Repository.CandidateEductionDetailsRepository;
import com.RMS.Repository.CandidateLanguageDetailsRepository;
import com.RMS.Repository.CandidateRepository;
import com.RMS.Repository.CandidateSkillDetailsRepository;
import com.RMS.Repository.CandidateUploadDocumentRepository;
import com.RMS.Repository.CityRepository;
import com.RMS.Repository.CompanyBasicDetailsRepository;
import com.RMS.Repository.CompanyRepository;
import com.RMS.Repository.CountryRepository;
import com.RMS.Repository.DistrictRepository;
import com.RMS.Repository.JobDetailsRepository;
import com.RMS.Repository.RecruitmentApplicationProcessRepository;
import com.RMS.Repository.StateRepository;
import com.RMS.Repository.TalukaRepository;

@Controller
public class CompanyController {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private CountryRepository countryRepository;
	@Autowired
	private StateRepository stateRepository;
	@Autowired
	private DistrictRepository districtRepository;
	@Autowired
	private TalukaRepository talukaRepository;
	@Autowired
	private CityRepository cityRepository;
	@Autowired
	private CompanyBasicDetailsRepository companyBasicDetailsRepository;
	@Autowired
	private CompanyRepository companyRepository;
	@Autowired
	private JobDetailsRepository jobDetailsRepository;
	@Autowired
	private RecruitmentApplicationProcessRepository recruitmentApplicationProcessRepository;
	@Autowired
	private CandidateRepository candidateRepository;
	@Autowired
	private CandidateDetailsRepository candidateDetailsRepository;
	@Autowired
	private CandidateEductionDetailsRepository candidateEductionDetailsRepository;
	@Autowired
	private CandidateSkillDetailsRepository candidateSkillDetailsRepository;
	@Autowired
	private CandidateLanguageDetailsRepository candidateLanguageDetailsRepository;
	@Autowired
	private CandidateUploadDocumentRepository candidateUploadDocumentRepository;

	@RequestMapping(value = "/getCompanyBasicDetails")
	public ModelAndView getCompanyBasicDetails(HttpSession session) {
		ModelMap map = new ModelMap();
		CompanyMaster companyMaster = companyRepository
				.getCompanyMasterById(Integer.parseInt(String.valueOf(session.getAttribute("company_id"))));
		CompanyBasicDetailsModel companyBasicDetailsModel = new CompanyBasicDetailsModel();
		companyBasicDetailsModel.setCompany_name(companyMaster.getCompany_name());
		companyBasicDetailsModel.setEmail_id(companyMaster.getEmail_id());
		companyBasicDetailsModel.setCompany_reg_no(companyMaster.getCompany_reg_no());
		map.addAttribute("countryList", countryRepository.getAllCountryList());
		map.addAttribute("stateList", stateRepository.getAllStateList());
		map.addAttribute("cityList", cityRepository.getAllCityList());
		map.addAttribute("districtList", districtRepository.getAllDistrictList());
		map.addAttribute("talukaList", talukaRepository.getAllTalukaList());
		map.addAttribute("form", companyBasicDetailsModel);
		return new ModelAndView("CompanyBasicDetails", map);
	}

	@RequestMapping(value = "/saveCompanyBasicDetails")
	public ModelAndView saveCompanyBasicDetails(@ModelAttribute("form") CompanyBasicDetailsModel companyBasicModel,
			BindingResult bindingResult, HttpSession session) {
		logger.info("saveCompanyBasicDetails method:=");
		ModelMap map = new ModelMap();
		try {
			CompanyBasicDetails companyBasicDetails = new CompanyBasicDetails();
			companyBasicDetails.setCompanyMaster(companyRepository
					.getCompanyMasterById(Integer.parseInt(String.valueOf(session.getAttribute("company_id")))));
			companyBasicDetails.setAddress(companyBasicModel.getAddress());
			companyBasicDetails.setCompany_description(companyBasicModel.getCompany_description());
			companyBasicDetails.setFacebook_profile_url(companyBasicModel.getFacebook_profile_url());
			companyBasicDetails.setLinkedin_profile_url(companyBasicModel.getLinkedin_profile_url());
			companyBasicDetails.setCompany_website(companyBasicModel.getCompany_website());
			companyBasicDetails.setMobile_no(companyBasicModel.getMobile_no());
			companyBasicDetails.setPan_card_no(companyBasicModel.getPan_card_no());
			companyBasicDetails.setTelephone_no(companyBasicModel.getTelephone_no());
			companyBasicDetails.setPincode(companyBasicModel.getPincode());
			companyBasicDetails.setTwitter_profile_url(companyBasicModel.getTwitter_profile_url());
			companyBasicDetails.setStateMaster(stateRepository.getStateById(companyBasicModel.getState_id()));
			companyBasicDetails.setCountryMaster(countryRepository.getCountryById(companyBasicModel.getCountry_id()));
			companyBasicDetails
					.setDistrictMaster(districtRepository.getDistrictById(companyBasicModel.getDistrict_id()));
			companyBasicDetails.setTalukaMaster(talukaRepository.getTalukaById(companyBasicModel.getTaluka_id()));
			companyBasicDetails.setEmail_id(companyBasicModel.getEmail_id());
			companyBasicDetails.setCompany_reg_no(companyBasicModel.getCompany_reg_no());
			companyBasicDetails.setCityMaster(cityRepository.getCityBYId(companyBasicModel.getCity_id()));
			companyBasicDetailsRepository.save(companyBasicDetails);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error in saveCompanyBasicDetails:= " + e);
		}

		return new ModelAndView("CompanyBasicDetails", map);
	}

	@RequestMapping(value = "/getCompanyJobDetails")
	public ModelAndView getCompanyJobDetailss(@ModelAttribute("form") JobDetailsModel jobModel, BindingResult bindingResult,
			HttpSession session) {
		ModelMap map = new ModelMap();
		map.addAttribute("companyJobDetailsList", jobDetailsRepository.getJobTitleByCompanyId(Integer.parseInt(String.valueOf(session.getAttribute("company_id")))));
		map.addAttribute("form", jobModel);
		return new ModelAndView("CompanyJobDetailsList", map);
	}

	@RequestMapping(value = "/addJobDetails")
	public ModelAndView addJobDetails(HttpSession session) {
		ModelMap map = new ModelMap();
		try {
			if (!(session.getAttribute("company_id") == null || session.getAttribute("company_id").equals(""))) {
				
				map.addAttribute("form", new JobDetailsModel());
			} else
				return new ModelAndView("redirect:/login");
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error in addJobDetails:= " + e);
		}
		return new ModelAndView("CompanyJobDetails", map);
	}

	@RequestMapping(value = "/saveJobDetails",method = RequestMethod.POST)
	public ModelAndView saveJobDetails(@ModelAttribute("form")@Valid JobDetailsModel jobModel, BindingResult bindingResult,
			HttpSession session) {
		logger.info("saveJobDetails method:=");
		ModelMap map = new ModelMap();
		JobDetails jobDetails = null;
		try {
			  if (jobModel.getJob_details_id() == null || jobModel.getJob_details_id() == 0){
				  	jobDetails = new JobDetails();
			  }
			  else {
				  jobDetails = jobDetailsRepository.getJobDetailsById(jobModel.getJob_details_id());
			  }
				jobDetails.setCompanyMaster(companyRepository.getCompanyMasterById(Integer.parseInt(String.valueOf(session.getAttribute("company_id")))));
				jobDetails.setJob_details_id(jobModel.getJob_details_id());
				jobDetails.setJob_name(jobModel.getJob_name());
				jobDetails.setJob_description(jobModel.getJob_description());
				jobDetails.setTime_duration(jobModel.getTime_duration());
				jobDetails.setEmployment_type(jobModel.getEmployment_type());
				jobDetails.setLocation(jobModel.getLocation());
				jobDetails.setRequired_candidates(jobModel.getRequired_candidates());
				jobDetails.setJoining_date(jobModel.getJoining_date());
				jobDetails.setMinimum_salary(jobModel.getMinimum_salary());
				jobDetails.setMaximum_salary(jobModel.getMaximum_salary());
				jobDetails.setExperience(jobModel.getExperience());
				jobDetailsRepository.save(jobDetails);
				
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error in saveCompanyBasicDetails:= " + e);

		}
		
		  return new ModelAndView("redirect:/getCompanyJobDetails");
	}

	@RequestMapping(value = "/fetchJobDetails")
	public ModelAndView fetchJobDetails(HttpSession session) {
		ModelMap map = new ModelMap();
		map.addAttribute("jobDetailsList", jobDetailsRepository.getAllJobDetails());
		return new ModelAndView("AdminJob", map);
	}

	@RequestMapping(value = "/getCompanyDetails")
	public ModelAndView getCompanyDetails(HttpSession session, CandidateAndCompanyModel candidateAndCompanyModel) {
		ModelMap map = new ModelMap();
		map.addAttribute("jobDetailsList", jobDetailsRepository.getAllJobDetails());
		map.addAttribute("CompanyBasicDetails", companyBasicDetailsRepository.getCompanyBasicDetailsByCompanyId(candidateAndCompanyModel.getCompany_id()));
		return new ModelAndView("CompanyDetails", map);
	}

	@RequestMapping(value = "/getPendingJobList")
	public ModelAndView validUser(HttpSession session,
			@ModelAttribute("form") RecruitmentApplicationProcessModel recruitmentApplicationProcessModel) {
		ModelMap map = new ModelMap();
		try {
			List<RecruitmentApplicationProcess> pendingJobList = recruitmentApplicationProcessRepository
					.getJobApplicationListBYCompanyId_Status((Integer) session.getAttribute("company_id"), "P");
			if (pendingJobList != null) {
				map.addAttribute("pendingJobList", pendingJobList);
			}
			map.addAttribute("form", recruitmentApplicationProcessModel);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error in validUser:= " + e);
		}

		return new ModelAndView("CompanyPendingList", map);
	}

	@RequestMapping(value = "/getCandidateDetails")
	public ModelAndView getCandidateDetails(HttpSession session, CandidateAndCompanyModel candidateAndCompanyModel) {
		ModelMap map = new ModelMap();
		Integer candidateId = candidateAndCompanyModel.getCandidate_id();
		map.addAttribute("jobDetailsList", jobDetailsRepository.getAllJobDetails());
		map.addAttribute("CandidateDetails", candidateRepository.getCandidateMasterById(candidateId));
		map.addAttribute("CandidateBasicDetails",candidateDetailsRepository.getCandidateDetailsByCandidateId(candidateId));
		map.addAttribute("CandidateEducationDetails",candidateEductionDetailsRepository.getCandidateEductionDetailsByCandidateId(candidateId));
		map.addAttribute("CandidateSkillDetails",candidateSkillDetailsRepository.getCandidateSkillDetailsByCandidateId(candidateId));
		map.addAttribute("CandidateLanguageDetails",candidateLanguageDetailsRepository.getCandidateLanguageDetailsByCandidateId(candidateId));
		map.addAttribute("CandidateUploadDoc",candidateUploadDocumentRepository.getCandidateUploadDocumentByCandidateId(candidateId));
		map.addAttribute("recruitment_application_process_id",candidateAndCompanyModel.getRecruitment_application_process_id());
		return new ModelAndView("CandidateRecruitmentDetails", map);
	}

	@RequestMapping(value = "/savePendingModalDetails")
	public ModelAndView savePendingModalDetails(
			@ModelAttribute("form") RecruitmentApplicationProcessModel applicationProcessModel,
			BindingResult bindingResult, HttpSession session) {
		logger.info("savePendingModalDetails method:=");
		ModelMap map = new ModelMap();
		try {
			RecruitmentApplicationProcess recruitmentApplicationProcess = recruitmentApplicationProcessRepository
					.getRecruitmentApplicationProcessById(
							applicationProcessModel.getRecruitment_application_process_id());
			if (recruitmentApplicationProcess != null) {
				if (!applicationProcessModel.getStatus().equals("")
						&& applicationProcessModel.getStatus().equals("A")) {
					recruitmentApplicationProcess.setComment(applicationProcessModel.getComment());
					recruitmentApplicationProcess.setApprove_reject_date(new Date());
					recruitmentApplicationProcess.setStatus("A");
					recruitmentApplicationProcessRepository.save(recruitmentApplicationProcess);
				} else {
					recruitmentApplicationProcess.setComment(applicationProcessModel.getComment());
					recruitmentApplicationProcess.setApprove_reject_date(new Date());
					recruitmentApplicationProcess.setStatus("R");
					recruitmentApplicationProcessRepository.save(recruitmentApplicationProcess);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error in savePendingModalDetails:= " + e);

		}
		return new ModelAndView("CompanyPendingList", map);
	}

	  @RequestMapping(value="/editJobDetails") 
	  public ModelAndView  editJobDetails(@ModelAttribute("form") JobDetails jobDetails, BindingResult  bindingResult,HttpSession session){ 
	  ModelMap map = new ModelMap(); 
	  try{ 
		  if((session.getAttribute("Job_details_id") == null || session.getAttribute("Job_details_id").equals(""))) { 
			  jobDetails = jobDetailsRepository.getJobDetailsById(jobDetails.getJob_details_id());
			  if (jobDetails != null)	  { 
			  		JobDetailsModel jobDetailsModel = new JobDetailsModel(); 
			  		if (jobDetails.getCompanyMaster() != null) 
			  			jobDetailsModel.setCompany_id(jobDetails.getCompanyMaster().getCompany_id());
			  		jobDetailsModel.setJob_name(jobDetails.getJob_name());
			  		jobDetailsModel.setJob_description(jobDetails.getJob_description());
			  		jobDetailsModel.setTime_duration(jobDetails.getTime_duration());
			  		jobDetailsModel.setEmployment_type(jobDetails.getEmployment_type());
			  		jobDetailsModel.setLocation(jobDetails.getLocation());
			  		jobDetailsModel.setRequired_candidates(jobDetails.getRequired_candidates());
			  		jobDetailsModel.setJoining_date(jobDetails.getJoining_date());
			  		jobDetailsModel.setMinimum_salary(jobDetails.getMinimum_salary());
			  		jobDetailsModel.setMaximum_salary(jobDetails.getMaximum_salary());
			  		jobDetailsModel.setExperience(jobDetails.getExperience());
			  		jobDetailsModel.setJob_details_id(jobDetails.getJob_details_id());
			  		map.addAttribute("form",jobDetailsModel); 
			  		map.addAttribute("job_details_id", jobDetails.getJob_details_id());
	  
	  
	  } } 
	  else
	  { 
		  return new ModelAndView("redirect:/"); } }
	  catch (Exception e) 
	  { e.printStackTrace(); 
	  logger.error("Error in editJobDetails() : "+e); }
	  return new ModelAndView("CompanyJobDetails",map); }
	  
	  
	  
	  
	  @RequestMapping(value="/deleteJobDetails") 
	  public ModelAndView  deleteJobDetails(@ModelAttribute("form") JobDetails jobDetails, BindingResult  bindingResult,HttpSession session){ 
	  ModelMap map = new ModelMap(); 
	  try{ 
		  if((session.getAttribute("Job_details_id") == null || session.getAttribute("Job_details_id").equals(""))) { 
			  jobDetails = jobDetailsRepository.getJobDetailsById(jobDetails.getJob_details_id());
			  if (jobDetails != null)	  { 
				  jobDetails.setDeleted("Y");
				  		jobDetailsRepository.save(jobDetails);
				  		map.addAttribute("form", jobDetails);
				  		map.addAttribute("job_details_id", jobDetails.getJob_details_id());
				  
		  
	  }
			  else
			  { 
				  return new ModelAndView("redirect:/"); }
		  }
	  }
	  catch (Exception e) { e.printStackTrace();
	  logger.error("Error in savePendingModalDetails:= "+e);
	  }
	  return new ModelAndView("redirect:/getCompanyJobDetails");
		/* return new ModelAndView("CompanyJobDetailsList", map); */
	  } 
	 
	 

}