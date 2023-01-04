package com.inspur.ssm.controller;

import com.inspur.ssm.pojo.Settle;
import com.inspur.ssm.service.SettleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/settle")    //模块名称
public class SettleController {
    @Autowired
    private SettleService settleService;

    //查询全部记录
    @RequestMapping("allSettle")    //映射路径
    public String list(Model model) {
        List<Settle> list = settleService.queryAllSettle();

        model.addAttribute("list", list);
        return "settle";
    }

    //查询一条记录
    @RequestMapping("/querySettle")
    public String querySettle(int memberid, String membername, int registno, Model model) {
        Settle settle = settleService.querySettleById(memberid, membername, registno);
        List<Settle> list=new ArrayList<Settle>();
        list.add(settle);

        if(settle==null){
            list=settleService.queryAllSettle();
            model.addAttribute("error","未查到");
        }

        model.addAttribute("list",list);
        return "settle";


    }
}
