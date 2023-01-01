package com.inspur.ssm.service;

import javax.annotation.Resource;

import com.inspur.ssm.pojo.Userssm;

@Resource
public interface LoginService {
	//用户查询列表
	public Userssm findUser(Userssm userssm)throws Exception;

}
