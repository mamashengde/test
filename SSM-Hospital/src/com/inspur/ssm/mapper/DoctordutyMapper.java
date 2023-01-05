package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Doctorduty;


import java.util.Date;
import java.util.List;

public interface DoctordutyMapper {
    //查询一条记录
    List<Doctorduty> queryDoctordutyById(String docid, String dutydate);

    //查询全部的记录
    List<Doctorduty> queryAllDoctorduty();
}