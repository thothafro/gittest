package de.thomasfrommeld.timetrack.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/getdate.html")
	public ModelAndView doHome() {
		
		return new ModelAndView("home", "date", new Date().getTime());
	}
}