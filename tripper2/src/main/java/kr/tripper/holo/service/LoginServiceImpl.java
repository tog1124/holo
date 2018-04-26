package kr.tripper.holo.service;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.tripper.holo.dao.MemberDAOImpl;
import kr.tripper.holo.dto.MemberVO;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	@Autowired
	MemberDAOImpl mDaoImpl;
	@Autowired
	JavaMailSender mailSender;
	@Override
	public String signin(String email, String password,HttpSession session, MemberVO mVo) {
		String admin = "admin@master.com";
		String chk = null;
		String dbpwd = mDaoImpl.signin(email);
		if ( session.getAttribute("email") != null ){
			session.removeAttribute("email");}
		
		if ( session.getAttribute("f_name") != null ){
			session.removeAttribute("f_name");}
		
		if ( session.getAttribute("l_name") != null ){
			session.removeAttribute("l_name");}
		
		if ( session.getAttribute("nickname") != null ){
			session.removeAttribute("nickname");}
		
		if ( session.getAttribute("state") != null ){
			session.removeAttribute("state");}
	
		if ( session.getAttribute("phonenum") != null ){
			session.removeAttribute("phonenum");}
		
		if(dbpwd.equals(password) && !email.equals("admin")) {
			if ( email != null ){ // 로그인 성공
				session.setAttribute("email", email);
				session.setAttribute("f_name", mDaoImpl.selectF_name(email));
				session.setAttribute("l_name", mDaoImpl.selectL_name(email));
				session.setAttribute("nickname", mDaoImpl.selectNickname(email));
				session.setAttribute("state", mDaoImpl.selectState(email));
				session.setAttribute("phonenum", mDaoImpl.selectPhonnum(email));
				chk = "redirect:main";
			}
		} else if(email.equals("admin")) {
			session.setAttribute("email", "master");
		}
		else {chk="redirect:/loginalret";}
		return chk;
	}
	@Override
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:login";
	}
	@Override
	public String signup(MemberVO mVo,String signupemail,String signuppassword, String cppassword) {
		String move = null;
		String dbemail = mDaoImpl.emailoverlap(signupemail);
		
		if (!signupemail.equals(dbemail)&&signuppassword.equals(cppassword)) {
			mVo.setEmail(signupemail);
			mVo.setPwd(signuppassword);
			mVo.setF_name("설정하지 않음");
			mVo.setL_name("설정하지 않음");
			mVo.setNickname("설정하지 않음");
			mVo.setPhonnum("설정하지 않음");
			mVo.setState("설정하지 않음");
			mDaoImpl.signup(mVo);
			move="redirect:/welcomealert";
		}
		else if(!signuppassword.equals(cppassword)){
			move="redirect:/signupalret"; 
		}
		else if (signupemail.equals(dbemail)) {
			move="redirect:/emailoverralret";
		}
		return move;
	}
	@Override
	public void sendmail(String email,HttpSession session) {
		Random rnd =new Random();
		StringBuffer buf =new StringBuffer();
		StringBuffer code = null;
		for(int i=0;i<20;i++){
			// rnd.nextBoolean() 는 랜덤으로 true, false 를 리턴. true일 시 랜덤 한 소문자를, false 일 시 랜덤 한 숫자를 StringBuffer 에 append 한다.
			if(rnd.nextBoolean()){
				code=buf.append((char)((int)(rnd.nextInt(26))+97));
			}else{
				code=buf.append((rnd.nextInt(10)));
			}
		}
		if ( session.getAttribute("sentcode") != null ){
			// 기존에 login이란 세션 값이 존재한다면
			session.removeAttribute("sentcode");}
		session.setAttribute("sentcode", code);
		if ( session.getAttribute("useremail") != null ){
			// 기존에 login이란 세션 값이 존재한다면
			session.removeAttribute("useremail");}
		session.setAttribute("useremail", email);
		String setfrom = "donghyun1538@gmail.com";        
		String tomail  = email;     // 받는 사람 이메일
		String title   = "본인확인을 위한 인증코드입니다.";      // 제목
		String content = "코드를 정확하게 입력해주세요\n코드는 "+ code + " 입니다.";    // 내용
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper  = new MimeMessageHelper(message, true, "UTF-8"); //두번째 인자 true여야 파일첨부 가능.
			messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(tomail);     // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content);  // 메일 내용
			mailSender.send(message);
		} catch(Exception e){
			System.out.println(e);
		}
	}
	@Override
	public String chkcode(String code,HttpSession session) {
		String move = null;
		StringBuffer sentcode = (StringBuffer)session.getAttribute("sentcode");
		if(code.equals(sentcode.toString())) {
			move = "changepassword";
		}else if(!code.equals(sentcode.toString())) {
			session.removeAttribute("sentcode");
			session.removeAttribute("useremail");
			move = "alert";
		}
		return move;
	}
	@Override
	public String changpassword(String signuppassword,String cppassword,HttpSession session,MemberVO mVo) {
		String email = (String)session.getAttribute("useremail");
		String move = null;
		if(signuppassword.equals(cppassword)) {
			mVo.setEmail(email);
			mVo.setPwd(signuppassword);
			mVo.setF_name(mDaoImpl.selectF_name(email));
			mVo.setL_name(mDaoImpl.selectL_name(email));
			mVo.setNickname(mDaoImpl.selectNickname(email));
			mVo.setState(mDaoImpl.selectState(email));
			mVo.setPhonnum(mDaoImpl.selectPhonnum(email));
			mDaoImpl.updatePassword(mVo);
			move="alert";
		}
		else if(!signuppassword.equals(cppassword)){
			move="redirect:/changepasswordalert"; 
		}
		return move;
	}
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
	@Override
	public String login(HttpSession session) {
		String move = "login";
		session.invalidate();
		return move;
	}
}

