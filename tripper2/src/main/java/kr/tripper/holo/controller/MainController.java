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

public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Resource(name="loginService")
	private LoginService loginService;
	
	@RequestMapping(value = "/play", method = RequestMethod.GET)
	public String play(Model model,HttpSession session,String page) {
		page = "play";
		String move=loginService.sessionchk(session,page);
		model.addAttribute("msg", "로그인 후 이용가능 합니다."); 
		model.addAttribute("url", "login"); 
		model.addAttribute("action", "get"); 
		return move;
	}
	@RequestMapping(value = "/food", method = RequestMethod.GET)
	public String food(Model model,HttpSession session,String page) {
		page = "food";
		String move=loginService.sessionchk(session,page);
		model.addAttribute("msg", "로그인 후 이용가능 합니다."); 
		model.addAttribute("url", "login"); 
		model.addAttribute("action", "get"); 
		return move;
	}	
	@RequestMapping(value = "/playreview", method = RequestMethod.GET)
	public String playreview(Model model,HttpSession session,String page) {
		page = "playreview";
		String move=loginService.sessionchk(session,page);
		model.addAttribute("msg", "로그인 후 이용가능 합니다."); 
		model.addAttribute("url", "login"); 
		model.addAttribute("action", "get"); 
		return move;
	}	
}
