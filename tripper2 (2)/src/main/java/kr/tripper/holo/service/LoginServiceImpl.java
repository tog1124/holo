package kr.tripper.holo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.tripper.holo.dao.MemberDAOImpl;

	@Service("loginService")
	public class LoginServiceImpl implements LoginService {
		@Autowired
		MemberDAOImpl mDaoImpl;
		@Override
		public String signin(String email, String password) {
			
			String chk = null;
			String dbpwd = mDaoImpl.signin(email);
			if(dbpwd.equals(password)) {
				chk = "redirect:main";
			}
			else {chk="redirect:/";}
			return chk;
		}
		@Override
		public String signup(String email, String password) {
			// TODO Auto-generated method stub
			return null;
		}
	
		
		
	
	
	
}