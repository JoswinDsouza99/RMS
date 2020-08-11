package com.RMS.Report;

import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.RMS.Bean.CandidateDetails;
import com.RMS.Bean.CandidateMaster;
import com.RMS.Model.CandidateAndCompanyModel;
import com.RMS.Model.CandidateDetailsModel;
import com.RMS.Model.ReportModel;
import com.RMS.Repository.CandidateDetailsRepository;
import com.RMS.Repository.CandidateRepository;

@Controller
public class CandidateReportController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private CandidateRepository candidateRepository;
	
	@Autowired
	private CandidateDetailsRepository candidateDetailsRepository;
	
	@RequestMapping(value="/getCandidateReport")
	 public ModelAndView getCandidateReport(HttpSession session,@ModelAttribute("form")ReportModel reportModel){
		 ModelMap map = new ModelMap();
		logger.info("getCandidateDetailsReport method:=");
		try {
			map.addAttribute("form", reportModel);
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error in getCandidateDetailsReport:= "+e);
		}
		
		return new ModelAndView("CandidateReport",map);
	 }
	
	 @RequestMapping(value="/getCandidateDetailsReport")
	 public ModelAndView getCandidateDetailsReport(HttpSession session,ReportModel reportModel){
		 ModelMap map = new ModelMap();
		logger.info("getCandidateDetailsReport method:=");
		try {
			List<CandidateDetails> candidateList= candidateDetailsRepository.getCandidateMasterListByMonthAndYear(reportModel.getMonth(), reportModel.getYear());
			map.addAttribute("candidateList", candidateList);
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error in getCandidateDetailsReport:= "+e);
		}
		
		return new ModelAndView("AjaxPage",map);
	 }
}
