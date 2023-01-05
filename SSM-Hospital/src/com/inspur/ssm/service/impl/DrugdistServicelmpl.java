package com.inspur.ssm.service.impl;


import com.inspur.ssm.mapper.DrugdistMapper;
import com.inspur.ssm.pojo.Drugdist;
import com.inspur.ssm.service.DrugdistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("DrugdistService")
public class DrugdistServicelmpl implements DrugdistService {
    @Autowired
    private DrugdistMapper drugdistMapper;

    public List<Drugdist> queryDrugdistById(String registno, String memberid) {
        return drugdistMapper.queryDrugdistById(registno,memberid);
    }

    public List<Drugdist> queryAllDrugdist() {
        return drugdistMapper.queryAllDrugdist();
    }
}
