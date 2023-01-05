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
        return  doctorsMapper.insert(doctors);
    }
}
