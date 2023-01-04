package com.inspur.ssm.service.impl;

import com.inspur.ssm.mapper.DrugsMapper;
import com.inspur.ssm.pojo.Drugs;

import com.inspur.ssm.service.DrugsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("DrugsService")
public class DrugsServiceImpl implements DrugsService {

    @Autowired
    private DrugsMapper drugsMapper;

    @Override
    public List<Drugs> getDrugsList(){
        return drugsMapper.getDrugsList();
    }

    @Override
    public int addDrugs(Drugs drugs){
        return drugsMapper.addDrugs(drugs);
    }

    @Override
    public Drugs getDrugsById(int id){
        return drugsMapper.getDrugsById(id);
    }

    @Override
    public int updateDrugs(Drugs drugs){
        return drugsMapper.updateDrugs(drugs);
    }

    @Override
    public int deleteDrugsById(int id){
        return drugsMapper.deleteDrugsById(id);
    }

    @Override
    public List<Drugs> queryDrugeByIdName(String drugsid, String name) {
        return drugsMapper.queryDrugeByIdName(drugsid,name);
    }

    @Override
    public int numaddDrugsById(String drugsid,int totalnum) {
        return drugsMapper.numaddDrugsById(drugsid,totalnum);
    }
}
