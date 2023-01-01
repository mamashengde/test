package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Paymentdetails;

public interface PaymentdetailsMapper {
    int insert(Paymentdetails record);

    int insertSelective(Paymentdetails record);
}