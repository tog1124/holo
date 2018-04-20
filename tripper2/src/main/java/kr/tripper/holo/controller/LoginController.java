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
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
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
	public String signup(MemberVO mVo,String signupemail,String signuppassword,String cppassword) {
		String move = loginService.signup(mVo,signupemail,signuppassword,cppassword);
		return move;
	}
	@RequestMapping(value = "/forgetpassword", method = RequestMethod.GET)
	public String forgetpassword(Locale locale, Model model) {
		return "login";
	}
	@RequestMapping(value = "/loginalret", method = RequestMethod.GET)
	public String emailfalse(Locale locale, Model model) {
		model.addAttribute("msg", "이메일 또는 비밀번호를 확인하세요."); 
		model.addAttribute("url", "login"); 
		return "alert";
	}
	@RequestMapping(value = "/signupalret", method = RequestMethod.GET)
	public String passwordfalse(Locale locale, Model model) {
		model.addAttribute("msg", "비밀번호가 일치하지 않습니다."); 
		model.addAttribute("url", "login"); 
		return "alert";
	}
	@RequestMapping(value = "/emailoverralret", method = RequestMethod.GET)
	public String emailoverralret(Locale locale, Model model) {
		model.addAttribute("msg", "이메일이 중복됩니다."); 
		model.addAttribute("url", "login"); 
		return "alert";
	}
		@RequestMapping(value = "/welcomealert", method = RequestMethod.GET)
		public String welcomealert(Locale locale, Model model) {
			model.addAttribute("msg", "회원가입을 환영합니다."); 
			model.addAttribute("url", "login"); 
			return "alert";
		
	}
	
}
