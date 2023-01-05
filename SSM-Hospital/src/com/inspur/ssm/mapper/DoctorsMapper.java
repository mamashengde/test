package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Doctors;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DoctorsMapper {
    int deleteByPrimaryKey(int docid);

    int insert(Doctors record);

    int insertSelective(Doctors record);

    Doctors selectByPrimaryKey(int docid);

    int updateByPrimaryKeySelective(Doctors record);

    int updateByPrimaryKey(Doctors record);

    //下面是自己加的函数

    List<Doctors> getDoctorsList();

    int addDoctors(Doctors doctors);

    int deleteDoctors(@Param("docid") int docid);

    Doctors getDoctorsById(@Param("docid") int docid);

    int updateDoctors(Doctors doctors);
}