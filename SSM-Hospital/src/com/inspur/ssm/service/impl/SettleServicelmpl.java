package com.inspur.ssm.service.impl;

import com.inspur.ssm.mapper.SettleMapper;
import com.inspur.ssm.pojo.Settle;
import com.inspur.ssm.service.SettleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service("SettleService")
public class SettleServicelmpl implements SettleService {
    @Autowired
    private SettleMapper settleMapper;

    public Settle querySettleById(int memberid, String membername, int registno) {
        return settleMapper.querySettleById(memberid, membername, registno);
    }

    public List<Settle> queryAllSettle() {
        return settleMapper.queryAllSettle();
    }
}
