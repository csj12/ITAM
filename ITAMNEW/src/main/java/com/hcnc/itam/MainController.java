package com.hcnc.itam;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/login")
	public String login(HttpSession session, Model model) throws Exception
	{
		return "login";
	}
}
