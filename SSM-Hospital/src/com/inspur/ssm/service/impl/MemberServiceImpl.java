package com.inspur.ssm.service.impl;


import com.inspur.ssm.mapper.MembersMapper;
import com.inspur.ssm.pojo.Members;
import com.inspur.ssm.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MembersMapper membersMapper;

    @Override
    public List<Members> getMembersList(){
        return membersMapper.getMembersList();
    }

    @Override
    public int addMembers(Members members){
        return membersMapper.addMembers(members);
    }

    @Override
    public int deleteMembers(int memberid){
        return membersMapper.deleteMembers(memberid);
    }

    @Override
    public Members getMembersById(int memberid){
        return membersMapper.getMembersById(memberid);
    }

    @Override
    public int updateMembers(Members members){
        return membersMapper.updateMembers(members);
    }

    @Override
    public int membersBalanceAddById(int memberid, int totalBalance){
        return membersMapper.memberBalanceAddById(memberid,totalBalance);
    }
}
