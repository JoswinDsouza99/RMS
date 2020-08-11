package com.RMS.Controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.servlet.ModelAndView;

import com.RMS.Bean.CandidateDetails;
import com.RMS.Bean.CandidateMaster;
import com.RMS.Bean.CandidateSkillDetails;
import com.RMS.Bean.CompanyMaster;
import com.RMS.Bean.RecruitmentApplicationProcess;
import com.RMS.Common.CipherEncryptDecrypt;
import com.RMS.Model.CandidateAndCompanyModel;
import com.RMS.Model.CandidateDetailsModel;
import com.RMS.Repository.CandidateRepository;
import com.RMS.Repository.CandidateSkillDetailsRepository;
import com.RMS.Repository.CompanyRepository;
import com.RMS.Repository.RecruitmentApplicationProcessRepository;



@Controller
public class LoginLogoutController
{
	 private final Logger logger = LoggerFactory.getLogger(this.getClass());
	 
	 @Autowired
	 private CompanyRepository companyRepository;
	 
	 @Autowired
	 private CandidateRepository candidateRepository;
	 
	 @Autowired
	 private CandidateSkillDetailsRepository candidateSkillDetailsRepository;
	 
	 @Autowired
	 private RecruitmentApplicationProcessRepository recruitmentApplicationProcessRepository;
	 
	 @RequestMapping(value={"/", "/welcomePage"})
	 public ModelAndView welComePage(){
		 ModelMap map = new ModelMap();
		 map.addAttribute("form",new CandidateAndCompanyModel());
		 return new ModelAndView("WelcomePage",map);
	 }
	 
	 @RequestMapping(value={"/login"})
	 public ModelAndView login(HttpSession session){
		 ModelMap map = new ModelMap();
		 clearAllSession(session);
		 map.addAttribute("form",new CandidateAndCompanyModel());
		 
		 return new ModelAndView("Login",map);
	 }
	 
	 @RequestMapping(value="/goToRegistration")
	 public ModelAndView goToRegistration(HttpSession session){
		ModelMap map = new ModelMap();
		logger.info("goToRegistration method:=");
		map.addAttribute("form",new CandidateAndCompanyModel());
		return new ModelAndView("RegistrationPage",map);
	 }
	 
	 @RequestMapping(value="/forgotpassword")
	 public ModelAndView forgotpassword(HttpSession session){
		ModelMap map = new ModelMap();
		logger.info("forgotpassword method:=");
		map.addAttribute("form",new CandidateAndCompanyModel());
		return new ModelAndView("ForgotPasswordPage",map);
	 }
	 
	 @RequestMapping(value="/gotologin")
	 public ModelAndView forgotpassword(HttpSession session,@ModelAttribute("form")CandidateAndCompanyModel candidateAndCompanyModel){
		ModelMap map = new ModelMap();
		logger.info("forgotpassword method:=");
		if(candidateAndCompanyModel.getRegistration_type().equals("C")) {
			//For Company
			CompanyMaster companyMaster = companyRepository.getCompanyMasterByEmailId(candidateAndCompanyModel.getEmail_id());
			companyMaster.setPassword(candidateAndCompanyModel.getPassword());
			companyRepository.save(companyMaster);
		}
		else {
			//For Candidate
			CandidateMaster candidateMaster= candidateRepository.getCandidateMasterByEmailId(candidateAndCompanyModel.getEmail_id());
			candidateMaster.setPassword(candidateAndCompanyModel.getPassword());
			candidateRepository.save(candidateMaster);
		
			
		}
		map.addAttribute("form",new CandidateAndCompanyModel());
	return new ModelAndView("Login",map);
	 }

	 
	 @RequestMapping(value="/loginForAdmin")
	 public ModelAndView loginForAdmin(HttpSession session){
		 ModelMap map = new ModelMap();
		 clearAllSession(session);
		 map.addAttribute("form",new CandidateAndCompanyModel());
		 session.setAttribute("admin_id", 0);
		 session.setAttribute("password", "admin");
		 session.setAttribute("name", "Admin");
		 return new ModelAndView("Login",map);
	 }

	 @RequestMapping(value="/goToDashboard")
	 public ModelAndView goToDashboard(HttpSession session,@ModelAttribute("form")CandidateAndCompanyModel candidateAndCompanyModel){
		logger.info("goToDashboard method:=");
		ModelMap map = new ModelMap();
		if(candidateAndCompanyModel.getRegistration_type().equals("C")) {
			//For Company
			CompanyMaster companyMaster = new CompanyMaster();
			companyMaster.setCompany_name(candidateAndCompanyModel.getCompany_name());
			companyMaster.setCompany_reg_no(candidateAndCompanyModel.getCompany_reg_no());
			companyMaster.setEmail_id(candidateAndCompanyModel.getEmail_id());
			companyMaster.setPassword(candidateAndCompanyModel.getPassword());
			companyMaster.setRegistration_date(new Date());
			companyMaster.setDeleted("N");
			companyMaster.setActive_inactive("Y");
			companyRepository.save(companyMaster);
		}
		else {
			//For Candidate
			CandidateMaster candidateMaster= new CandidateMaster();
			candidateMaster.setFull_name(candidateAndCompanyModel.getFull_name());
			candidateMaster.setEmail_id(candidateAndCompanyModel.getEmail_id());
			candidateMaster.setPassword(candidateAndCompanyModel.getPassword());
			candidateMaster.setRegistration_date(new Date());
			candidateMaster.setActive_inactive("Y");
			candidateMaster.setDeleted("N");
			candidateRepository.save(candidateMaster);
		
			
		}
		map.addAttribute("form",new CandidateAndCompanyModel());
		return new ModelAndView("Dashboard",map);
	 }
	
	 @RequestMapping(value="/validUser")
	 public ModelAndView validUser(HttpSession session,@ModelAttribute("form")CandidateAndCompanyModel candidateAndCompanyModel){
		 ModelMap map = new ModelMap();
		logger.info("goToDashboard method:=");
		String type= candidateAndCompanyModel.getRegistration_type();
		if(type != null) {
			session.setAttribute("registration_type", type);
		}
		try {
			if(candidateAndCompanyModel.getRegistration_type() != null && candidateAndCompanyModel.getRegistration_type().equals("")) {
				 session.setAttribute("admin_id", 0);
			}
			else {
				if(session.getAttribute("registration_type").equals("C")) {
					CompanyMaster companyMaster = companyRepository.getCompanyMasterByEmailIdPassword(candidateAndCompanyModel.getEmail_id(), candidateAndCompanyModel.getPassword());
					if(companyMaster != null) {
						session.setAttribute("name", companyMaster.getCompany_name());
						session.setAttribute("registration_type", "C");
						session.setAttribute("company_id", companyMaster.getCompany_id());
						
					}
					List<RecruitmentApplicationProcess> recruitedJobApplicationList = recruitmentApplicationProcessRepository.getJobApplicationListBYCompanyId_Status((Integer) session.getAttribute("company_id"), "A");
					if(recruitedJobApplicationList != null){
						session.setAttribute("recruitedJobApplicationList", recruitedJobApplicationList);
					}
					List<RecruitmentApplicationProcess> pendingJobApplicationList = recruitmentApplicationProcessRepository.getJobApplicationListBYCompanyId_Status((Integer) session.getAttribute("company_id"), "P");
					if(pendingJobApplicationList != null){
						session.setAttribute("pendingJobApplicationList", pendingJobApplicationList);
					}
					List<RecruitmentApplicationProcess> rejectedJobApplicationList = recruitmentApplicationProcessRepository.getJobApplicationListBYCompanyId_Status((Integer) session.getAttribute("company_id"), "R");
					if(rejectedJobApplicationList != null){
						session.setAttribute("rejectedJobApplicationList", rejectedJobApplicationList);
					}
					List<RecruitmentApplicationProcess> totalJobApplicationList = recruitmentApplicationProcessRepository.getTotalJobApplicationListBYCompanyId((Integer) session.getAttribute("company_id"));
					if(totalJobApplicationList != null){
						session.setAttribute("totalJobApplicationList", totalJobApplicationList);
					}
					Long recruitedJobCount = recruitmentApplicationProcessRepository.getJobCountBYCompanyId_Status((Integer) session.getAttribute("company_id"), "A");
					if(recruitedJobCount != null){
						session.setAttribute("recruitedJobCount", recruitedJobCount);
					}
					Long pendingJobCount = recruitmentApplicationProcessRepository.getJobCountBYCompanyId_Status((Integer) session.getAttribute("company_id"), "P");
					if(pendingJobCount != null){
						session.setAttribute("pendingJobCount", pendingJobCount);
					}
					Long rejectedJobCount = recruitmentApplicationProcessRepository.getJobCountBYCompanyId_Status((Integer) session.getAttribute("company_id"), "R");
					if(rejectedJobCount != null){
						session.setAttribute("rejectedJobCount", rejectedJobCount);
					}
					Long totalJobCount = recruitmentApplicationProcessRepository.getTotalJobCountBYCompanyId((Integer) session.getAttribute("company_id"));
					if(totalJobCount != null){
						session.setAttribute("totalJobCount", totalJobCount);
					}
					
				}
				else  {
					CandidateMaster candidateMaster=candidateRepository.getCandidateMasterByEmailIdPassword(candidateAndCompanyModel.getEmail_id(), candidateAndCompanyModel.getPassword()); 
					if (candidateMaster != null)
					{
						session.setAttribute("name", candidateMaster.getFull_name());
						session.setAttribute("registration_type", "CD");
						session.setAttribute("candidate_id", candidateMaster.getCandidate_id());
					}
					List<RecruitmentApplicationProcess> acceptedJobApplicationList = recruitmentApplicationProcessRepository.getJobApplicationListBYCandidateId_Status((Integer) session.getAttribute("candidate_id"), "A");
					if(acceptedJobApplicationList != null){
						session.setAttribute("acceptedJobApplicationList", acceptedJobApplicationList);
					}
					List<RecruitmentApplicationProcess> pendingJobApplicationList = recruitmentApplicationProcessRepository.getJobApplicationListBYCandidateId_Status((Integer) session.getAttribute("candidate_id"), "P");
					if(pendingJobApplicationList != null){
						session.setAttribute("pendingJobApplicationList", pendingJobApplicationList);
					}
					List<RecruitmentApplicationProcess> rejectedJobApplicationList = recruitmentApplicationProcessRepository.getJobApplicationListBYCandidateId_Status((Integer) session.getAttribute("candidate_id"), "R");
					if(rejectedJobApplicationList != null){
						session.setAttribute("rejectedJobApplicationList", rejectedJobApplicationList);
					}
					Long acceptedJobCount = recruitmentApplicationProcessRepository.getJobCountBYCandidateId_Status((Integer) session.getAttribute("candidate_id"), "A");
					if(acceptedJobCount != null){
						session.setAttribute("acceptedJobCount", acceptedJobCount);
					}
					Long pendingJobCount = recruitmentApplicationProcessRepository.getJobCountBYCandidateId_Status((Integer) session.getAttribute("candidate_id"), "P");
					if(pendingJobCount != null){
						session.setAttribute("pendingJobCount", pendingJobCount);
					}
					Long rejectedJobCount = recruitmentApplicationProcessRepository.getJobCountBYCandidateId_Status((Integer) session.getAttribute("candidate_id"), "R");
					if(rejectedJobCount != null){
						session.setAttribute("rejectedJobCount", rejectedJobCount);
					}
					List<CandidateSkillDetails>  candidateSkillProficiencyDetails = candidateSkillDetailsRepository.getCandidateSkillDetailsByCandidateId((Integer) session.getAttribute("candidate_id"));
					if (candidateSkillProficiencyDetails != null) {
						session.setAttribute("skillProficiencyLevel", candidateSkillProficiencyDetails);
					}
					
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error in validUser:= "+e);
		}
		
		return new ModelAndView("Dashboard",map);
	 }
	
	 private void clearAllSession(HttpSession session) {
			session.removeAttribute("company_id");
			session.removeAttribute("name");
			session.removeAttribute("candidate_id");
			session.removeAttribute("admin_id");
		}
}
