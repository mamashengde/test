package com.inspur.ssm.service;

import com.inspur.ssm.pojo.Drugs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DrugsService {

    public List<Drugs> getDrugsList();

    public int addDrugs(Drugs drugs);

    public Drugs getDrugsById(int id);

    public int updateDrugs(Drugs drugs);

    public int deleteDrugsById(int id);

    public List<Drugs> queryDrugeByIdName(String drugsid,String name);

    public int numaddDrugsById(String drugsid,int totalnum);
}
