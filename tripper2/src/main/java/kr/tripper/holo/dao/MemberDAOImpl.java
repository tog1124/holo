package kr.tripper.holo.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.tripper.holo.dto.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	String mapperPath = "member-mapper";
	
	@Override
	public String signin(String email,String password) {
		String chk = null;
		String dbpwd = sqlSession.selectOne(mapperPath+".login",email);
		if(dbpwd.equals(password)) {
			chk = "main";
		}
		else {chk="redirect:/";}
	
		return chk;
	}

	@Override
	public boolean rememberid() {
		return false;
	}

	@Override
	public void signup(MemberVO mVo) {
	
	}
	
	
}
