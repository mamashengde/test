package com.inspur.ssm.service;

import com.inspur.ssm.pojo.Doctors;
import com.inspur.ssm.pojo.Members;

import javax.annotation.Resource;
import java.util.List;

@Resource
public interface MemberService {

    public List<Members> getMembersList();

    public int addMembers(Members members);

    public int deleteMembers(int memberid);

    public Members getMembersById(int memberid);

    public int updateMembers(Members members);

    public int membersBalanceAddById(int memberid, int totalBalance);

}
