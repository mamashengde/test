package com.inspur.ssm.service.impl;

import com.inspur.ssm.mapper.FriendMapper;
import com.inspur.ssm.pojo.Friends;
import com.inspur.ssm.service.FriendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("FriendService")
public class FriendServiceImpl implements FriendService {
    //service调用dao
    @Autowired
    private FriendMapper friendMapper;

    public int addFriends(Friends friend){
        return friendMapper.addFriends(friend);
    }
}
