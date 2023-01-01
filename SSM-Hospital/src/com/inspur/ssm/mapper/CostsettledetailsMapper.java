package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Costsettledetails;

public interface CostsettledetailsMapper {
    int insert(Costsettledetails record);

    int insertSelective(Costsettledetails record);
}