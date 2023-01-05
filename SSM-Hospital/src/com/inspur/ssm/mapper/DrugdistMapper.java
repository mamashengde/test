package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Drugdist;

import java.util.List;

public interface DrugdistMapper {
    //查询一条记录
    List<Drugdist> queryDrugdistById(String registno, String memberid);

    //查询全部的记录
    List<Drugdist> queryAllDrugdist();
}
