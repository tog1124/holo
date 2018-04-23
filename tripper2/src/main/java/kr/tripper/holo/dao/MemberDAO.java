package kr.tripper.holo.dao;

import kr.tripper.holo.dto.MemberVO;

public interface MemberDAO {
	String signin(String email);
	boolean rememberid();
	void signup(MemberVO mVo);
	String emailoverlap(String email);
	int updatePassword(MemberVO mVo);
	String selectF_name(String email);
	String selectL_name(String email);
	String selectNickname(String email);
	String selectState(String email);
	String selectPhonnum(String email);
}
