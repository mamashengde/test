package com.inspur.ssm.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.inspur.ssm.pojo.Userssm;

@Resource
public interface UserService {
	
	public Long getCounts(Map<String, Object> params);

	//public List<Userssm> getUserList(Map<String, Object> params);
	public List<Userssm> getUserList();

	public int addUserssm(Userssm userssm);
}
