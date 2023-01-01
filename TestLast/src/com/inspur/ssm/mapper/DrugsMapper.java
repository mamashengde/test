package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Drugs;

public interface DrugsMapper {
    int deleteByPrimaryKey(String drugsid);

    int insert(Drugs record);

    int insertSelective(Drugs record);

    Drugs selectByPrimaryKey(String drugsid);

    int updateByPrimaryKeySelective(Drugs record);

    int updateByPrimaryKey(Drugs record);
}