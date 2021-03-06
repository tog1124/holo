package kr.tripper.holo.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.tripper.holo.dao.MemberDAOImpl;
import kr.tripper.holo.dto.MemberVO;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	@Autowired
	MemberDAOImpl mDaoImpl;
	@Override
	public String signin(String email, String password,HttpSession session) {
		String chk = null;
		if ( session.getAttribute("login") != null ){
			// 기존에 login이란 세션 값이 존재한다면
			session.removeAttribute("login");
		}
		String dbpwd = mDaoImpl.signin(email);
		if(dbpwd.equals(password)) {
			if ( email != null ){ // 로그인 성공
				session.setAttribute("login", email);
				chk = "redirect:main";
			}
		} 
		else {chk="redirect:/loginalret";}
		return chk;
	}
	@Override
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:login";
	}
	@Override
	public String signup(MemberVO mVo,String signupemail,String signuppassword, String cppassword) {
		String move = null;
		String dbemail = mDaoImpl.emailoverlap(signupemail);
		System.out.println(dbemail);
		if (!signupemail.equals(dbemail)&&signuppassword.equals(cppassword)) {
		mVo.setEmail(signupemail);
		mVo.setPwd(signuppassword);
		mVo.setF_name("설정하지 않음");
		mVo.setL_name("설정하지 않음");
		mVo.setNickname("설정하지 않음");
		mVo.setPhonnum("설정하지 않음");
		mVo.setState("설정하지 않음");
		mDaoImpl.signup(mVo);
		move="redirect:/welcomealert";
		}
		else if(!signuppassword.equals(cppassword)){
			move="redirect:/signupalret"; 
			}
		else if (signupemail.equals(dbemail)) {
			move="redirect:/emailoverralret";
		}
		return move;
	}
}