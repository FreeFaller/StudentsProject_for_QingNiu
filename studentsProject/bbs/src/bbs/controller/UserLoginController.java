package bbs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserLoginController {
	@RequestMapping(value = "/module")
	public String module(Model model, HttpServletRequest request,
			HttpServletResponse response){
		return "module";
	}
	
	@RequestMapping(value = "/themeManage")
	public String hotThemes(Model model, HttpServletRequest request,
			HttpServletResponse response){
		return "themeManage";
	}
	

	@RequestMapping(value = "/hotThemesAndModules")
	public String hotThemesAndModules(Model model, HttpServletRequest request,
			HttpServletResponse response){
		return "hotThemes";
	}
	
	@RequestMapping(value = "/theme")
	public String theme(Model model, HttpServletRequest request,
			HttpServletResponse response){
		return "theme";
	}
	
	@RequestMapping(value = "/register")
	public String register(Model model, HttpServletRequest request,
			HttpServletResponse response){
		return "register";
	}
	
	@RequestMapping(value = "/login")
	public String login(Model model, HttpServletRequest request,
			HttpServletResponse response){
		return "login";
	}
}
