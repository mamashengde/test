package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Registerorder;

public interface RegisterorderMapper {
    int deleteByPrimaryKey(String roid);

    int insert(Registerorder record);

    int insertSelective(Registerorder record);

    Registerorder selectByPrimaryKey(String roid);

    int updateByPrimaryKeySelective(Registerorder record);

    int updateByPrimaryKey(Registerorder record);
}