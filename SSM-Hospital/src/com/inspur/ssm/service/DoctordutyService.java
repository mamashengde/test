package com.inspur.ssm.service;

import com.inspur.ssm.pojo.Doctorduty;
import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Resource
public interface DoctordutyService {
    //增加一条值班记录
    int addDoctorduty(String docid,String dutydate);

    //查询一条信息
    List<Doctorduty> queryDoctordutyById(String docid, String dutydate);

    //删除一本书
    int deleteDoctordutyById(int id);


    //查询全部的信息
    List<Doctorduty> queryAllDoctorduty();
}
