package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Drugs;

import java.util.List;

public interface DrugsMapper {
    int deleteByPrimaryKey(String drugsid);

    int insert(Drugs record);

    int insertSelective(Drugs record);

    Drugs selectByPrimaryKey(String drugsid);

    int updateByPrimaryKeySelective(Drugs record);

    int updateByPrimaryKey(Drugs record);

    //下面是自己写的

    //获取药品信息
    List<Drugs> getDrugsList();
}