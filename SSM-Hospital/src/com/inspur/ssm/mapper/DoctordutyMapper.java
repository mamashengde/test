package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Doctorduty;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface DoctordutyMapper {
    //删除一本书
    int deleteDoctordutyById(@Param("DUTYID") int id);

    //查询一条记录
    List<Doctorduty> queryDoctordutyById(String docid, String dutydate);

    //查询全部的记录
    List<Doctorduty> queryAllDoctorduty();

    //增加一条值班记录
    int addDoctorduty(@Param("DOCID") String docid, @Param("DUTYDATE")String dutydate);
}