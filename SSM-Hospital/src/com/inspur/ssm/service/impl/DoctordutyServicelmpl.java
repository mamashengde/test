package com.inspur.ssm.service.impl;

import com.inspur.ssm.mapper.DoctordutyMapper;
import com.inspur.ssm.pojo.Doctorduty;
import com.inspur.ssm.service.DoctordutyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service("DoctordutyService")
public class DoctordutyServicelmpl implements DoctordutyService {
    @Autowired
    private DoctordutyMapper doctordutyMapper;

    @Override
    public int addDoctorduty(String docid, String dutydate) {
        return doctordutyMapper.addDoctorduty(docid,dutydate);
    }

    public int deleteDoctordutyById(int id) {
        return doctordutyMapper.deleteDoctordutyById(id);
    }

    public List<Doctorduty> queryDoctordutyById(String docid, String dutydate) {
        return doctordutyMapper.queryDoctordutyById(docid,dutydate);
    }

    public List<Doctorduty> queryAllDoctorduty() {
        return doctordutyMapper.queryAllDoctorduty();
    }
}
