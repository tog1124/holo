package kr.tripper.holo.service;

import javax.servlet.http.HttpSession;

public class MainServiceImpl implements MainService{

	@Override
	public String sessionchk(HttpSession session,String page) {
		String move = null;
		String email = (String)session.getAttribute("email");
		if(email == null) {
			move="alert";
			session.invalidate();
		}else {move=page;}
		return move;
	}
}
