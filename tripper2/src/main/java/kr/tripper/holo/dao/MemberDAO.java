package kr.tripper.holo.dao;

import kr.tripper.holo.dto.MemberVO;

public interface MemberDAO {
	String signin(String email, String pwd);
	boolean rememberid();
	void signup(MemberVO mVo);
}
