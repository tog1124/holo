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
		return  sqlSession.selectOne(mapperPath+".login",email);
	}
	@Override
	public boolean rememberid() {
		return false;
	}
	@Override
	public void signup(MemberVO mVo) {
		sqlSession.insert(mapperPath+".insertMember", mVo);
	}
	@Override
	public String emailoverlap(String email) {
		return sqlSession.selectOne(mapperPath+".emailsearch", email);
	}
	@Override
	public int updatePassword(MemberVO mVo) {
		return sqlSession.update(mapperPath+".updatePassword", mVo);
	}
	@Override
	public String selectF_name(String email) {
		return sqlSession.selectOne(mapperPath+".selectF_name", email);
	}
	@Override
	public String selectL_name(String email) {
		return sqlSession.selectOne(mapperPath+".selectL_name", email);
	}
	@Override
	public String selectNickname(String email) {
		return sqlSession.selectOne(mapperPath+".selectNickname", email);
	}
	@Override
	public String selectState(String email) {
		return sqlSession.selectOne(mapperPath+".selectState", email);
	}
	@Override
	public String selectPhonnum(String email) {
		return sqlSession.selectOne(mapperPath+".selectPhonnum", email);
	}
}
