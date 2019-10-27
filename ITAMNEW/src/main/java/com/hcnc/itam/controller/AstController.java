package com.hcnc.itam.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hcnc.itam.MyBatisSupport;
import com.hcnc.itam.service.AstService;


@Controller
public class AstController extends MyBatisSupport {

	
	@Autowired
	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(CodeManageController.class);
	
    /////////////////////
	@RequestMapping("/ITAM-COM-00002")
	public String authority_management1(Model model) {
		return "Ast/ITAM-COM-00002";
	}

	@RequestMapping("/ITAM-AST-00008")
	public String DueDiligence1(){
		
		return "Ast/ITAM-AST-00008";
	}

	@RequestMapping("/ITAM_USER_002-1") 
	public String DueDiligence05a(){
		
		return "Ast/ITAM_USER_002-1";
	}
	
	@RequestMapping("/ITAM-CODE-001")
	public String CODE(Model model) {
		return "Ast/ITAM-CODE-001";
	}
	
	 public static JSONObject getJsonStringFromMap( Map<String, Object> map ) throws JSONException
	    {
	        JSONObject jsonObject = new JSONObject();
	        for( Map.Entry<String, Object> entry : map.entrySet() ) {
	            String key = entry.getKey();
	            Object value = entry.getValue();
	            jsonObject.put(key, value);
	        }
	        
	        return jsonObject;
	    }	
	
	///////////
	@RequestMapping(value = "/ITAM-AST-00001", produces = "application/text; charset=utf8", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView HW() throws JSONException{
		
		ModelAndView modelAndView = new ModelAndView();
		
		AstService dao = sqlSession.getMapper(AstService.class);
		ArrayList<Map<String, Object>> comboList = dao.selectComboC();
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		
		JSONArray jsonArray = new JSONArray();
		for (int i=0; i < comboList.size(); i++) {
		        jsonArray.put(getJsonStringFromMap(comboList.get(i)));
		}
		
		modelMap.put("comboCList", comboList);
		modelAndView.setViewName("Ast/ITAM-AST-00001");
		modelAndView.addObject("jsonResult", jsonArray);
		return modelAndView;
	}
	
	@RequestMapping("/selectComboD")
	public ModelAndView selectComboD(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception{
		
	//	AstService
		ModelAndView modelAndView = new ModelAndView();
		return modelAndView;
	}	
	
	@RequestMapping("/selectComboE")
	public ModelAndView selectComboE(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception{
		
	//	AstService
		ModelAndView modelAndView = new ModelAndView();
		return modelAndView;
	}	
	
	
	@RequestMapping("/ITAM-AST-00001_1")
	   public String basicinformation(){
			      
	     return "Ast/ITAM-AST-00001_1";
	}
	
	@RequestMapping("/ITAM-AST-00001_2")
	   public String attributeinformation(){
			      
	     return "Ast/ITAM-AST-00001_2";
	}
	
	@RequestMapping("/ITAM-AST-00001_3")
	   public String costinformation(){
			      
	     return "Ast/ITAM-AST-00001_3";
	}
	
	@RequestMapping("/ITAM-AST-00001_4")
	   public String userinformation(){
			      
	     return "Ast/ITAM-AST-00001_4";
	}
	
	@RequestMapping("/ITAM-AST-00001_5")
	   public String positioninformation(){
			      
	     return "Ast/ITAM-AST-00001_5";
	}

	@RequestMapping("/ITAM-AST-00002")
	   public String DueDiligence5(){
		
		return "Ast/ITAM-AST-00002";
	}
	
	@RequestMapping("/ITAM-AST-00002_1")
	   public String basicinformation2(){
		
		return "Ast/ITAM-AST-00002_1";
	}
	
	@RequestMapping("/ITAM-AST-00002_2")
	   public String attributeinformation2(){
		
		return "Ast/ITAM-AST-00002_2";
	}
	
	@RequestMapping("/ITAM-AST-00002_3")
	   public String costinformation2(){
		
		return "Ast/ITAM-AST-00002_3";
	}
	
	@RequestMapping("/ITAM-AST-00002_4")
	   public String userinformation2(){
		
		return "Ast/ITAM-AST-00002_4";
	}
	
	@RequestMapping("/ITAM-AST-00002_5")
	   public String positioninformation2(){
		
		return "Ast/ITAM-AST-00002_5";
	}
	
	@RequestMapping("/ITAM-AST-00003")
	   public String A(Model model) {
		
		return "Ast/ITAM-AST-00003";
	}
	
	@RequestMapping("/ITAM-AST-00003_1")
	   public String basicinformation3(){
		
		return "Ast/ITAM-AST-00003_1";
	}
	
	@RequestMapping("/ITAM-AST-00003_2")
	   public String attributeinformation3(){
		
		return "Ast/ITAM-AST-00003_2";
	}
	
	@RequestMapping("/ITAM-AST-00003_3")
	   public String costinformation3(){
		
		return "Ast/ITAM-AST-00003_3";
	}
	
	@RequestMapping("/ITAM-AST-00003_4")
	   public String userinformation3(){
		
		return "Ast/ITAM-AST-00003_4";
	}
	
	@RequestMapping("/ITAM-AST-00003_5")
	   public String positioninformation3(){
		
		return "Ast/ITAM-AST-00003_5";
	}
	
	@RequestMapping("/ITAM-AST-00004")
	   public String DueDiligence(){
		
		return "Ast/ITAM-AST-00004";
	}
	
	@RequestMapping("/ITAM-AST-00004_1")
	   public String basicinformation4(){
		
		return "Ast/ITAM-AST-00004_1";
	}
	
	@RequestMapping("/ITAM-AST-00004_2")
	   public String attributeinformation4(){
		
		return "Ast/ITAM-AST-00004_2";
	}
	
	@RequestMapping("/ITAM-AST-00004_3")
	   public String costinformation4(){
		
		return "Ast/ITAM-AST-00004_3";
	}
	
	@RequestMapping("/ITAM-AST-00004_4")
	   public String userinformation4(){
		
		return "Ast/ITAM-AST-00004_4";
	}
	
	@RequestMapping("/ITAM-AST-00004_5")
	   public String positioninformation4(){
		
		return "Ast/ITAM-AST-00004_5";
	}
	
	
	
	//
	
	@RequestMapping("/ITAM-AST-00007")
	public String assets_due_diligence(Model model) {
		return "Ast/ITAM-AST-00007";
	}
	
	@RequestMapping("/ITAM-AST-000070")
	public String assets_due_diligence_table(Model model) {
		return "Ast/ITAM-AST-000070";
	}
	
	@RequestMapping("/ITAM-AST-00011")
	public String assets_maintenance(Model model) {
		return "Ast/ITAM-AST-00011";
	}
	
	@RequestMapping("/ITAM-AST-00012")
	public String assets_maintenance_table(Model model) {
		return "Ast/ITAM-AST-00012";
	}
    

	//
	@RequestMapping("/ITAM-AST-00006-return")
	   public String NotebookReturn(){
	      
	      return "Ast/ITAM-AST-00006-return";
	   }
	@RequestMapping("/ITAM-AST-00006-rental")
	   public String NotebookRental(){
	      
	      return "Ast/ITAM-AST-00006-rental";
	   }
	@RequestMapping("/ITAM-AST-00006-status")
	   public String NotebookStatus(){
	      
	      return "Ast/ITAM-AST-00006-status";
	   }
	@RequestMapping("/ITAM-AST-00006-MM")
	   public String NotebookMM(){
	      
	      return "Ast/ITAM-AST-00006-MM";
	   }
	@RequestMapping("/ITAM-AST-00009-status")
	   public String DisUseStatus(){
	      
	      return "Ast/ITAM-AST-00009-status";
	   }
	@RequestMapping("/ITAM-AST-00009-MM")
	   public String DisUseStatusMM(){
	      
	      return "Ast/ITAM-AST-00009-MM";
	   }
	@RequestMapping("/ITAM-AST-00010-status")
	   public String WareHouseStatus(){
	      
	      return "Ast/ITAM-AST-00010-status";
	   }
	@RequestMapping("/ITAM-AST-00010-MM")
	   public String WareHouseMM(){
	      
	      return "Ast/ITAM-AST-00010-MM"; 
	   }
}
