package kr.tripper.holo.login;


import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.tripper.holo.dao.MemberDAOImpl;
import kr.tripper.holo.dto.MemberVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	MemberDAOImpl mDaoImpl;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainlogin(Locale locale, Model model) {
		return "login";
	}
	
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String signin(String email,String password) {
		System.out.println(email);
		System.out.println(password);
		String move = mDaoImpl.signin(email,password);
		return move;
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signup(Locale locale, Model model) {
		return "login";
	}
	@RequestMapping(value = "/forgetpassword", method = RequestMethod.GET)
	public String forgetpassword(Locale locale, Model model) {
		return "login";
	}
	
	
}
