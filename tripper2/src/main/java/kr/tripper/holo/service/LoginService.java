package kr.tripper.holo.service;

import javax.servlet.http.HttpSession;

import kr.tripper.holo.dto.MemberVO;


public interface LoginService {

	String signin(String email, String password,HttpSession session);
	String signup(MemberVO mVo,String signupemail,String signuppassword);
	String logout(HttpSession session);
	String loginalert();
}
