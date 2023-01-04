package com.inspur.ssm.service;

import com.inspur.ssm.pojo.Drugs;

import java.util.List;

public interface DrugsService {

    public List<Drugs> getDrugsList();

    public int addDrugs(Drugs drugs);

    public Drugs getDrugsById(int id);

    public int updateDrugs(Drugs drugs);

    public int deleteDrugsById(int id);
}
