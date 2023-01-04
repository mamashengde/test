package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Doctors;

import java.util.List;

public interface DoctorsMapper {
    int deleteByPrimaryKey(String docid);

    int insert(Doctors record);

    int insertSelective(Doctors record);

    Doctors selectByPrimaryKey(String docid);

    int updateByPrimaryKeySelective(Doctors record);

    int updateByPrimaryKey(Doctors record);

    //下面是自己加的函数

    List<Doctors> getDoctorsList();

    int addDoctors(Doctors doctors);
}