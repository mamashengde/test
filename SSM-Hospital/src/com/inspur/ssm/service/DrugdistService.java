package com.inspur.ssm.service;


import com.inspur.ssm.pojo.Drugdist;

import java.util.List;

public interface DrugdistService {
    //查询一条信息
    List<Drugdist> queryDrugdistById(String registno, String memberid);


    //查询全部的信息
    List<Drugdist> queryAllDrugdist();
}
