package com.inspur.ssm.controller;

import com.inspur.ssm.pojo.Doctorduty;
import com.inspur.ssm.service.DoctordutyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/doctorduty")    //模块名称
public class DoctordutyController {
    @Autowired
    private DoctordutyService doctordutyService;

    //查询所有信息
    @RequestMapping("allDoctorduty")    //映射路径
    public String list(Model model) {
        List<Doctorduty> list = doctordutyService.queryAllDoctorduty();

        model.addAttribute("list", list);
        return "doctorduty";
    }

    //查询一条记录
    @RequestMapping("/queryDoctorduty")
    public String queryDoctorduty(String docid, String dutydate, Model model) {
        List<Doctorduty> list = doctordutyService.queryDoctordutyById(docid,dutydate);


        if(list==null){
            list=doctordutyService.queryAllDoctorduty();
            model.addAttribute("error","未查到");
        }

        model.addAttribute("list",list);
        return "doctorduty";


    }

}
