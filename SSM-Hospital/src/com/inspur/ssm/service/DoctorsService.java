package com.inspur.ssm.service;

import com.inspur.ssm.pojo.Doctors;

import java.util.List;

public interface DoctorsService {

    public List<Doctors> getDoctorsList();

    public int addDoctors(Doctors doctors);

    public int deleteDoctors(int docid);

    public Doctors getDoctorsById(int docid);

    public int updateDoctors(Doctors doctors);
}
