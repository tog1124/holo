package kr.tripper.holo.service;

import java.util.List;

import kr.tripper.holo.dto.PostVO;

public interface MainService {
	List<PostVO> search(String code);
	
}
