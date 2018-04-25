package kr.tripper.holo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.tripper.holo.dao.PostDAOImpl;
import kr.tripper.holo.dto.PostVO;

@Service("MainService")
public class MainServiceImpl implements MainService{
	
	@Autowired
	PostDAOImpl postDAOImpl;
	
	@Override
	public List<PostVO> search(String code) {
		String chk = null;
		List ill = postDAOImpl.search(code);
		
		return ill;
	}

	

}
