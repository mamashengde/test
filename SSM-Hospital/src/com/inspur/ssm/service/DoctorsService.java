package com.inspur.ssm.service;

import com.inspur.ssm.pojo.Doctors;

import java.util.List;

public interface DoctorsService {

    public List<Doctors> getDoctorsList();

    public int addDoctors(Doctors doctors);
}
