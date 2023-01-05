package com.inspur.ssm.service.impl;

import com.inspur.ssm.mapper.DoctorsMapper;
import com.inspur.ssm.pojo.Doctors;
import com.inspur.ssm.service.DoctorsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("DoctorsService")
public class DoctorsServiceImpl implements DoctorsService {

    @Autowired
    private DoctorsMapper doctorsMapper;

    @Override
    public List<Doctors> getDoctorsList(){
        return doctorsMapper.getDoctorsList();
    }

    @Override
    public int addDoctors(Doctors doctors){
        return  doctorsMapper.addDoctors(doctors);
    }

    @Override
    public int deleteDoctors(int docid){
        return doctorsMapper.deleteDoctors(docid);
    }

    @Override
    public Doctors getDoctorsById(int docid){
        return doctorsMapper.getDoctorsById(docid);
    }

    @Override
    public int updateDoctors(Doctors doctors){
        return doctorsMapper.updateDoctors(doctors);
    }

    @Override
    public List<Doctors> qureyDoctor(String docid, String name, String departid) {
        return doctorsMapper.qureyDoctor(docid,name,departid);
    }
}
