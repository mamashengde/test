package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Prescribe;

public interface PrescribeMapper {
    int deleteByPrimaryKey(String prescribeid);

    int insert(Prescribe record);

    int insertSelective(Prescribe record);

    Prescribe selectByPrimaryKey(String prescribeid);

    int updateByPrimaryKeySelective(Prescribe record);

    int updateByPrimaryKey(Prescribe record);
}