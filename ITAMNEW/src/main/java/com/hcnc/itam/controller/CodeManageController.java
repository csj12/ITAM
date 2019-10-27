package com.hcnc.itam.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hcnc.itam.MyBatisSupport;
import com.hcnc.itam.service.CodeManageService;

@Controller
public class CodeManageController extends MyBatisSupport {

	@Autowired
	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(CodeManageController.class);
	
	@RequestMapping("/CodeManage")
	public String index(Model model) {
		return "Common/CodeManage";
	}
	
	@RequestMapping(value = "/CodeManageSearch", produces = "application/text; charset=utf8", method = RequestMethod.POST)
	public ModelAndView CodeManageSearch(ModelMap model
											,HttpSession session
											,@RequestParam("rows") String rows
											, @RequestParam("page") String page
											,@RequestParam("gubun") String gubun
											,@RequestParam("fgDescSearch") String fgDescSearch)
	{
		CodeManageService service = sqlSession.getMapper(CodeManageService.class);
		HashMap<String, Object> modelMap = new HashMap<String, Object>();
		modelMap.put("gubun", gubun);
		modelMap.put("fgDescSearch", fgDescSearch);
		ArrayList<HashMap<String, Object>> list = service.getCodeManageSearch(modelMap);
		
		ModelAndView vie = new ModelAndView();
		vie.setViewName("jsonView");
		vie.addObject("rows",list);
		vie.addObject("records", list.size());
		vie.addObject("total", Math.ceil(list.size() / Double.parseDouble(rows)));
		vie.addObject("page", page);
		return vie;
	}
}