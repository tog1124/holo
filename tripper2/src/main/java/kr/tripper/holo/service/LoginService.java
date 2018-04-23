package kr.tripper.holo.service;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.tripper.holo.dto.MemberVO;


public interface LoginService {

	String signin(String email, String password,HttpSession session,MemberVO mVo);
	String signup(MemberVO mVo,String signupemail,String signuppassword,String cppassword);
	String logout(HttpSession session);
	void sendmail(String email,HttpSession session);
	String chkcode(String code,HttpSession session);
	String changpassword(String signuppassword,String cppassword,HttpSession session,MemberVO mVo);
	String sessionchk(HttpSession session);
}
