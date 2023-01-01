package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Doctoradvice;

public interface DoctoradviceMapper {
    int deleteByPrimaryKey(String daid);

    int insert(Doctoradvice record);

    int insertSelective(Doctoradvice record);

    Doctoradvice selectByPrimaryKey(String daid);

    int updateByPrimaryKeySelective(Doctoradvice record);

    int updateByPrimaryKey(Doctoradvice record);
}