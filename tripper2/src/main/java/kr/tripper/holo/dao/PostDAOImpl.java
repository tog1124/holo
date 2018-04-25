package kr.tripper.holo.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.tripper.holo.dto.PostVO;

public class PostDAOImpl implements PostDAO{
	@Autowired
	SqlSession sqlSession;

	
	String mapperPath = "member-mapper";

	@Override
	public List search(String code) {
		return sqlSession.selectList(code);
	}
	
}
