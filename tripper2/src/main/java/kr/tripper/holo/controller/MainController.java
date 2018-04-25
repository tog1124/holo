package kr.tripper.holo.controller;

import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import kr.tripper.holo.dto.MemberVO;
import kr.tripper.holo.dto.PostVO;
import kr.tripper.holo.service.MainService;

public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Resource(name="mainService")
	private MainService mainService;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public List<PostVO> search(String code) {
		List<PostVO> move = mainService.search(code);
		return move;
		
	}

}
