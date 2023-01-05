package com.inspur.ssm.mapper;

import java.util.List;
import java.util.Map;

import com.inspur.ssm.pojo.Userssm;
import org.apache.ibatis.annotations.Param;

public interface UserssmMapper {
    int deleteByPrimaryKey(String id);

    int insert(Userssm record);

    int insertSelective(Userssm record);

    Userssm selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Userssm record);

    int updateByPrimaryKey(Userssm record);

	Userssm findUser(Userssm userssmQuery);

	// .....      
    //public List<Userssm> getUserList(Map<String,Object> params);
    public List<Userssm> getUserList();
    //分页总条数
    public Long getCounts(Map<String,Object> p);

    int addUserssm(Userssm userssm);

    Userssm getUserById(@Param("id") int id);

    int updateUserById(Userssm userssm);

    int deleteUserById(@Param("id") int id);

    List<Userssm> queryUserssmByIdNameRole(@Param("ID") String id,@Param("USERNAME") String username,@Param("ROLE") String role);

    String getRoleByDigit(@Param("role") String role);
}