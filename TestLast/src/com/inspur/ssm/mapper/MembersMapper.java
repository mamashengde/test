package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Members;

public interface MembersMapper {
    int deleteByPrimaryKey(String memberid);

    int insert(Members record);

    int insertSelective(Members record);

    Members selectByPrimaryKey(String memberid);

    int updateByPrimaryKeySelective(Members record);

    int updateByPrimaryKey(Members record);
}