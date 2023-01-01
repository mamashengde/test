package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Doctors;

public interface DoctorsMapper {
    int deleteByPrimaryKey(String docid);

    int insert(Doctors record);

    int insertSelective(Doctors record);

    Doctors selectByPrimaryKey(String docid);

    int updateByPrimaryKeySelective(Doctors record);

    int updateByPrimaryKey(Doctors record);
}