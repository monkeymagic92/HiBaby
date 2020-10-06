package com.jy.hibaby.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jy.hibaby.Const;
import com.jy.hibaby.SecurityUtils;
import com.jy.hibaby.user.model.UserDMI;
import com.jy.hibaby.user.model.UserPARAM;
import com.jy.hibaby.user.model.UserVO;

@Service
public class UserService {
	
	@Autowired
	private UserMapper mapper;
	
	
	
	// SUCCESS 1:로그인 성공,  NO_ID 2:아이디 없음,  NO_PW 3:비번 틀림
	public int login(UserPARAM param) {
		if(param.getUser_id().equals("")) {
			return Const.NO_ID; // 2
		}
		UserDMI dbUser = mapper.selUser(param);
		
		if(dbUser == null) {
			return Const.NO_ID; 
		} 
						
		String cryptPw = SecurityUtils.getEncrypt(param.getUser_pw(), dbUser.getSalt());
		if(!cryptPw.equals(dbUser.getUser_pw())) {return Const.NO_PW;} // 3
		
		param.setUser_pw(null);
		param.setNm(dbUser.getNm());
		param.setI_user(dbUser.getI_user());
		param.setProfile_img(dbUser.getProfile_img());
		return Const.SUCCESS;
	}



	
	// 회원가입  (10.4 현재 정상적으로 진행됨)
	public int join(UserVO param) {
		String pw = param.getUser_pw();
		String salt = SecurityUtils.generateSalt();
		String cryptPw = SecurityUtils.getEncrypt(pw, salt);
		
		param.setSalt(salt);
		param.setUser_pw(cryptPw);
		
		return mapper.insUser(param);
	}
	
	
	
	
	// 비밀번호 찾기  1. 아디,이멜 검사
	public int findPw (UserPARAM param) {
		System.out.println("param.getUser_id() = " + param.getUser_id());
		UserDMI dbUser = mapper.findPwChk(param);
		
		if(dbUser == null) { return 0; } 
		
		if(dbUser.getUser_id().equals(param.getUser_id())
				&& dbUser.getEmail().equals(param.getEmail())) {
			return 1;
		} else {
			return 3;
		}
	}
}
