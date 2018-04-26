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
			if ( email != null ){ // �α��� ����
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
			mVo.setF_name("�������� ����");
			mVo.setL_name("�������� ����");
			mVo.setNickname("�������� ����");
			mVo.setPhonnum("�������� ����");
			mVo.setState("�������� ����");
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
			// rnd.nextBoolean() �� �������� true, false �� ����. true�� �� ���� �� �ҹ��ڸ�, false �� �� ���� �� ���ڸ� StringBuffer �� append �Ѵ�.
			if(rnd.nextBoolean()){
				code=buf.append((char)((int)(rnd.nextInt(26))+97));
			}else{
				code=buf.append((rnd.nextInt(10)));
			}
		}
		if ( session.getAttribute("sentcode") != null ){
			// ������ login�̶� ���� ���� �����Ѵٸ�
			session.removeAttribute("sentcode");}
		session.setAttribute("sentcode", code);
		if ( session.getAttribute("useremail") != null ){
			// ������ login�̶� ���� ���� �����Ѵٸ�
			session.removeAttribute("useremail");}
		session.setAttribute("useremail", email);
		String setfrom = "donghyun1538@gmail.com";        
		String tomail  = email;     // �޴� ��� �̸���
		String title   = "����Ȯ���� ���� �����ڵ��Դϴ�.";      // ����
		String content = "�ڵ带 ��Ȯ�ϰ� �Է����ּ���\n�ڵ�� "+ code + " �Դϴ�.";    // ����
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper  = new MimeMessageHelper(message, true, "UTF-8"); //�ι�° ���� true���� ����÷�� ����.
			messageHelper.setFrom(setfrom);  // �����»�� �����ϰų� �ϸ� �����۵��� ����
			messageHelper.setTo(tomail);     // �޴»�� �̸���
			messageHelper.setSubject(title); // ���������� ������ �����ϴ�
			messageHelper.setText(content);  // ���� ����
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

