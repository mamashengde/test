package com.inspur.ssm.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.inspur.ssm.pojo.Userssm;

@Resource
public interface UserService {
	
	public Long getCounts(Map<String, Object> params);

	//public List<Userssm> getUserList2(Map<String, Object> params);


	public List<Userssm> getUserList();

	public int addUserssm(Userssm userssm);

	public Userssm getUserById(int id);

	public int updateUserById(Userssm userssm);

	public int deleteUserById(int id);

	List<Userssm> queryUserssmByIdNameRole(String id,String username,String role);

	public String getRoleByDigit(String role);
}
