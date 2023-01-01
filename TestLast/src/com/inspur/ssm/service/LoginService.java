package com.inspur.ssm.service;

import javax.annotation.Resource;

import com.inspur.ssm.pojo.Userssm;

/**
 * 登录服务类
 * @author zhouyeqin
 *
 */
@Resource
public interface LoginService {
	//用户查询列表
	public Userssm findUser(Userssm userssm)throws Exception;

	public void updateByPrimaryKey(Userssm user);
}
