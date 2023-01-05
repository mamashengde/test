package com.inspur.ssm.service;

import com.inspur.ssm.pojo.Settle;

import javax.annotation.Resource;
import java.util.List;

@Resource
public interface SettleService {
    //查询一条信息
    Settle querySettleById(int memberid, String membername, int registno);


    //查询全部的信息
    List<Settle> queryAllSettle();
}
