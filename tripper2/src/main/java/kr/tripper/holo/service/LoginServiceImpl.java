package kr.tripper.holo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
<<<<<<< HEAD
import kr.tripper.holo.dao.MemberDAOImpl;
=======
>>>>>>> refs/remotes/origin/master

<<<<<<< HEAD
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
=======
import kr.tripper.holo.dao.MemberDAOImpl;

	@Service("loginService")
	public class LoginServiceImpl implements LoginService {
		@Autowired
		MemberDAOImpl mDaoImpl;
		
		
		@Override
		public String signin(String email, String password) {
			System.out.println(email+"2");
			System.out.println(password);
			String chk = null;
			String dbpwd = mDaoImpl.signin(email);
			if(dbpwd.equals(password)) {
				chk = "redirect:main";
			}
			else {chk="redirect:/";}
			return chk;
		}
	
	
	
}
>>>>>>> refs/remotes/origin/master
