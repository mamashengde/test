package com.inspur.ssm.controller;

import com.inspur.ssm.pojo.Members;
import com.inspur.ssm.service.MemberService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/members")
public class MembersController extends PageController{
    @Autowired
    private MemberService memberService;

    @RequestMapping("/getMembersList")
    public String getMembersList(Model model){
        List<Members> list = memberService.getMembersList();
        model.addAttribute("membersList",list);
        return "membersList";
    }

    @RequestMapping("/deleteMembers")
    public String deleteMembers(int memberid){
        memberService.deleteMembers(memberid);
        return "redirect:/members/getMembersList";
    }

    @RequestMapping("/toUpdateMembers")
    public String toUpdateMembersPage(Model model , int memberid){
        Members members = memberService.getMembersById(memberid);
        model.addAttribute("QMembers",members);
        return "updateMembers";
    }

    @RequestMapping("/updateMembers")
    public String updateMembers(Members members){
        memberService.updateMembers(members);
        return "redirect:/members/getMembersList";
    }

    @RequestMapping("/addMembers")
    public String addMembers(Members members){
        memberService.addMembers(members);
        return "redirect:/members/getMembersList";
    }

    @RequestMapping("/toMembersBalanceAdd")
    public String toMemberBalanceAdd(Model model , int memberid){
        Members members = memberService.getMembersById(memberid);
        model.addAttribute("QMembers",members);
        return "membersBalanceAdd";
    }

    @RequestMapping("/membersBalanceAdd")
    public String MemberBalanceAdd(int memberid,int balance,int addBalance){
        int totalBalance=balance+addBalance;
        memberService.membersBalanceAddById(memberid,totalBalance);
        return "redirect:/members/getMembersList";
    }
}
