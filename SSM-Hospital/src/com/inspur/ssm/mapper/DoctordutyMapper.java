package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Doctorduty;

public interface DoctordutyMapper {
    int deleteByPrimaryKey(String ddid);

    int insert(Doctorduty record);

    int insertSelective(Doctorduty record);

    Doctorduty selectByPrimaryKey(String ddid);

    int updateByPrimaryKeySelective(Doctorduty record);

    int updateByPrimaryKey(Doctorduty record);
}