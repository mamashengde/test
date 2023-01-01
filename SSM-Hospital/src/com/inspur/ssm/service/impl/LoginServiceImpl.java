package com.inspur.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.ssm.mapper.UserssmMapper;
import com.inspur.ssm.pojo.Userssm;
import com.inspur.ssm.service.LoginService;
@Service("loginService")
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private UserssmMapper userssmMapper;

	@Override
	public Userssm findUser(Userssm userssmQuery) throws Exception {
		Userssm userssm = userssmMapper.findUser(userssmQuery);
		if(userssm == null){
			throw new Exception("用户信息不存在");
		}else{
			return userssm;
		}
	}

	@Override
	public void updateByPrimaryKey(Userssm user) {
		userssmMapper.updateByPrimaryKey(user);
	}
	
	
	
}
