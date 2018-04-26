package kr.tripper.holo.controller;


import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.tripper.holo.dto.MemberVO;
import kr.tripper.holo.service.LoginService;


@Controller

public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Resource(name="loginService")
	private LoginService loginService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String mainlogin(Locale locale, Model model,HttpSession session) {
		loginService.login(session);
		return "login";
	}
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String signin(String email,String password,HttpSession session,MemberVO mVo) {
		String move = loginService.signin(email,password,session,mVo);
		return move;
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		String move = loginService.logout(session);
		return move;
	}
	@RequestMapping(value = "/writeinfo", method = RequestMethod.GET)
	public String writeinfo(Model model,HttpSession session,String page) {
		page = "writeinfo";
		String move = loginService.sessionchk(session,page);
		model.addAttribute("msg", "�α��� �� �̿밡�� �մϴ�."); 
		model.addAttribute("url", "login"); 
		model.addAttribute("action", "get"); 
		return "move";
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model,HttpSession session,String page) {
		page = "main";
		String move=loginService.sessionchk(session,page);
		model.addAttribute("msg", "�α��� �� �̿밡�� �մϴ�."); 
		model.addAttribute("url", "login"); 
		model.addAttribute("action", "get"); 
		return move;
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signup(MemberVO mVo,String signupemail,String signuppassword,String cppassword) {
		String move = loginService.signup(mVo,signupemail,signuppassword,cppassword);
		return move;
	}
	@RequestMapping(value = "/findpassword", method = RequestMethod.GET)
	public String forgetpassword(Locale locale, Model model) {
		return "findpassword";
	}
	@RequestMapping(value = "/loginalret", method = RequestMethod.GET)
	public String emailfalse(Locale locale, Model model) {
		model.addAttribute("msg", "�̸��� �Ǵ� ��й�ȣ�� Ȯ���ϼ���."); 
		model.addAttribute("url", "login"); 
		model.addAttribute("action", "get"); 
		return "alert";
	}
	@RequestMapping(value = "/signupalret", method = RequestMethod.GET)
	public String passwordfalse(Locale locale, Model model) {
		model.addAttribute("msg", "��й�ȣ�� ��ġ���� �ʽ��ϴ�."); 
		model.addAttribute("url", "login"); 
		model.addAttribute("action", "get"); 
		return "alert";
	}
	@RequestMapping(value = "/emailoverralret", method = RequestMethod.GET)
	public String emailoverralret(Locale locale, Model model) {
		model.addAttribute("msg", "�̸����� �ߺ��˴ϴ�."); 
		model.addAttribute("url", "login"); 
		model.addAttribute("action", "get"); 
		return "alert";
	}
		@RequestMapping(value = "/welcomealert", method = RequestMethod.GET)
		public String welcomealert(Locale locale, Model model) {
			model.addAttribute("msg", "ȸ�������� ȯ���մϴ�."); 
			model.addAttribute("url", "login"); 
			model.addAttribute("action", "get"); 
			return "alert";
	}
		//�̸��� �߼�
		@RequestMapping(value = "/sendcode", method = RequestMethod.POST)
		public String sendcode(Locale locale, Model model, String email,HttpSession session) {
			loginService.sendmail(email,session);
			model.addAttribute("msg", "������ �߼� �Ǿ����ϴ�."); 
			model.addAttribute("url", "inputcode"); 
			model.addAttribute("action", "post");
			return "alert";
		}
		//�ڵ��Է�â
		@RequestMapping(value = "/inputcode", method = RequestMethod.POST)
		public String inputcode() {
			return "codechk";
		}
		//�ڵ� üũ
		@RequestMapping(value = "/codechk", method = RequestMethod.POST)
		public String chkcode(Locale locale, Model model,String code,HttpSession session) {
			System.out.println(code);
			System.out.println(session);
			String move = loginService.chkcode(code,session);
			model.addAttribute("msg", "�ڵ尡 ��ġ���� �ʽ��ϴ�."); 
			model.addAttribute("url", "findpassword");
			model.addAttribute("action", "post"); 
			return move;
		}
		//��й�ȣ ã���
		@RequestMapping(value = "/findpassword", method = RequestMethod.POST)
		public String findpassword() {
			return "findpassword";
		}
		@RequestMapping(value = "/changepassword", method = RequestMethod.POST)
		public String changpassword(Locale locale, Model model,String signuppassword,String cppassword,HttpSession session,MemberVO mVo) {
			String move = loginService.changpassword(signuppassword,cppassword,session,mVo);
			model.addAttribute("msg", "��й�ȣ�� ����Ǿ����ϴ�."); 
			model.addAttribute("url", "login"); 
			model.addAttribute("action", "get"); 
			return move;
		}
		@RequestMapping(value = "/changepassword", method = RequestMethod.GET)
		public String getchangpassword() {
			return "changepassword";
		}
		@RequestMapping(value = "/changepasswordalert")
		public String changepasswordalert(Locale locale, Model model,String signuppassword,String cppassword,HttpSession session,MemberVO mVo) {
			model.addAttribute("msg", "��й�ȣ�� ��ġ���� �ʽ��ϴ�."); 
			model.addAttribute("url", "changepassword"); 
			model.addAttribute("action", "get");
			return "alert";
		}
}
