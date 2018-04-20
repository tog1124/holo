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
	public String signin(String email) {
<<<<<<< HEAD
		return sqlSession.selectOne(mapperPath+".login",email);
		
=======
		return  sqlSession.selectOne(mapperPath+".login",email);
>>>>>>> refs/remotes/origin/master
	}

	@Override
	public boolean rememberid() {
		
		return false;
	}

	@Override
	public void signup(String email, String password) {
		// TODO Auto-generated method stub
		
	}

	
	
	
}
