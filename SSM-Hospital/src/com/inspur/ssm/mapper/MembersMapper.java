package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Members;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MembersMapper {
    int deleteByPrimaryKey(String memberid);

    int insert(Members record);

    int insertSelective(Members record);

    Members selectByPrimaryKey(String memberid);

    int updateByPrimaryKeySelective(Members record);

    int updateByPrimaryKey(Members record);


    //下面是自己写的函数

    List<Members> getMembersList();

    int addMembers(Members members);

    int deleteMembers(@Param("memberid") int memberid);

    Members getMembersById(@Param("memberid") int memberid);

    int updateMembers(Members members);

    int memberBalanceAddById(@Param("memberid")int memberid,@Param("totalBalance") int totalBalance);
}