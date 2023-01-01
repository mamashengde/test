package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Drugsstorrecord;

public interface DrugsstorrecordMapper {
    int deleteByPrimaryKey(String id);

    int insert(Drugsstorrecord record);

    int insertSelective(Drugsstorrecord record);

    Drugsstorrecord selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Drugsstorrecord record);

    int updateByPrimaryKey(Drugsstorrecord record);
}