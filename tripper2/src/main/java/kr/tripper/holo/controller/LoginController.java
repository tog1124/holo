package kr.tripper.holo.controller;


import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import kr.tripper.holo.dto.MemberVO;
import kr.tripper.holo.service.LoginService;


@Controller

public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Resource(name="loginService")
	private LoginService loginService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainlogin(Locale locale, Model model) {
		return "login";
	}
	
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String signin(String email,String password,HttpSession session) {
		String move = loginService.signin(email,password,session);
		return move;
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		String move = loginService.logout(session);
		return move;
	}
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		return "main";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signup(MemberVO mVo,String signupemail,String signuppassword) {
		loginService.signup(mVo,signupemail,signuppassword);
		return "login";
	}
	@RequestMapping(value = "/forgetpassword", method = RequestMethod.GET)
	public String forgetpassword(Locale locale, Model model) {
		return "login";
	}
	@RequestMapping(value = "/alert", method = RequestMethod.GET)
	public String alert(Locale locale, Model model) {
		return "alert";
	}
	
	
}
