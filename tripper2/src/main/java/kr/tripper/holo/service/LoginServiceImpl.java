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
			// ������ login�̶� ���� ���� �����Ѵٸ�
			session.removeAttribute("login");
		}
		String dbpwd = mDaoImpl.signin(email);
		if(dbpwd.equals(password)) {
			if ( email != null ){ // �α��� ����
				session.setAttribute("login", email);
				chk = "redirect:main";
			}
		} 
		else {chk="redirect:/";}
		return chk;
	}
	@Override
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	@Override
	public String signup(MemberVO mVo,String signupemail,String signuppassword) {
		mVo.setEmail(signupemail);
		mVo.setPwd(signuppassword);
		mVo.setF_name("�������� ����");
		mVo.setL_name("�������� ����");
		mVo.setNickname("�������� ����");
		mVo.setPhonnum("�������� ����");
		mVo.setState("�������� ����");
		mDaoImpl.signup(mVo);
		return "redirect:/";
	}
	@Override
	public String loginalert() {
		String msg = "���̵� �Ǵ� ��й�ȣ�� Ȯ���ϼ���.";
		String url = "redirect:/";
		return url;
	}

}

