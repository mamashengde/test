package com.inspur.ssm.service;

import com.inspur.ssm.pojo.Books;
import com.inspur.ssm.pojo.Friends;

import javax.annotation.Resource;

@Resource
public interface FriendService {
    //添加朋友
    int addFriends(Friends friend);
}
