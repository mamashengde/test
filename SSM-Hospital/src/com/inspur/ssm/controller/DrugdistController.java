package com.inspur.ssm.controller;


import com.inspur.ssm.pojo.Drugdist;
import com.inspur.ssm.service.DrugdistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/drugdist")    //模块名称
public class DrugdistController {
    @Autowired
    private DrugdistService drugdistService;

    //查询所有信息
    @RequestMapping("allDrugdist")    //映射路径
    public String list(Model model) {
        List<Drugdist> list = drugdistService.queryAllDrugdist();

        model.addAttribute("list", list);
        return "drugdist";
    }

    //查询一条记录
    @RequestMapping("/queryDrugdist")
    public String queryDrugdist(String registno, String memberid, Model model) {
        List<Drugdist> list = drugdistService.queryDrugdistById(registno,memberid);


        if(list==null){
            list=drugdistService.queryAllDrugdist();
            model.addAttribute("error","未查到");
        }

        model.addAttribute("list",list);
        return "drugdist";


    }
}
