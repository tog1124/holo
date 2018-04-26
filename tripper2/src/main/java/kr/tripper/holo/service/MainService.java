package kr.tripper.holo.service;

import javax.servlet.http.HttpSession;

public interface MainService {
	String sessionchk(HttpSession session,String page);
}
