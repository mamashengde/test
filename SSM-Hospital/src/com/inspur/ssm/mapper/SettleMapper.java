package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Settle;

import java.util.List;

public interface SettleMapper {
    //查询一条记录
    Settle querySettleById(int memberid, String membername, int registno);

    //查询全部的记录
    List<Settle> queryAllSettle();
}
