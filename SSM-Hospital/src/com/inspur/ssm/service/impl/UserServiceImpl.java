package com.inspur.ssm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.ssm.mapper.UserssmMapper;
import com.inspur.ssm.pojo.Userssm;
import com.inspur.ssm.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserssmMapper userssmMapper;


	@Override
	public Long getCounts(Map<String, Object> params) {
		return userssmMapper.getCounts(params);
	}

	@Override
	/*public List<Userssm> getUserList(Map<String, Object> params) {
		return userssmMapper.getUserList(params);
	}*/
	public List<Userssm> getUserList() {
		return userssmMapper.getUserList();
	}

	public int addUserssm(Userssm userssm){
		//return userssmMapper.
		return userssmMapper.addUserssm(userssm);
	}

	public Userssm getUserById(int id){
		return userssmMapper.getUserById(id);
	}

	public int updateUserById(Userssm userssm){
		return userssmMapper.updateUserById(userssm);
	}

	public int deleteUserById(int id){
		return userssmMapper.deleteUserById(id);
	}

    @Override
    public List<Userssm> queryUserssmByIdNameRole(String id, String username, String role) {
		return userssmMapper.queryUserssmByIdNameRole(id,username,role);
    }

    @Override
	public String getRoleByDigit(String role){
		return userssmMapper.getRoleByDigit(role);
	}

}
