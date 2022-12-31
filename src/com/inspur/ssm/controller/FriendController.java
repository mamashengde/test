package com.inspur.ssm.controller;
import com.inspur.ssm.pojo.Friends;
import com.inspur.ssm.service.FriendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Friend")
public class FriendController {


    @Autowired
    //@Qualifier("FriendServiceImpl")
    private FriendService friendService;


    //跳转到增加书籍页面
    @RequestMapping("/toAddFriend")
    public String toAddPager() {
        return "addFriend";
    }

    //添加书籍的请求
    @RequestMapping("/addFriend")
    public String addFriend(Friends friends) {
        System.out.println("addFriends___" + friends);
        friendService.addFriends(friends);
        return "redirect:/Friend/addFriend";//重定向allBook请求
    }

    @RequestMapping("/toAllFriend")
    public String toAddPager2() {
        return "allFriend";
    }
}
