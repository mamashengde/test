package com.inspur.ssm.service;

import com.inspur.ssm.pojo.Doctorduty;
import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Resource
public interface DoctordutyService {
    //查询一条信息
    List<Doctorduty> queryDoctordutyById(String docid, String dutydate);


    //查询全部的信息
    List<Doctorduty> queryAllDoctorduty();
}
