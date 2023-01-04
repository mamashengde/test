package com.inspur.ssm.controller;

import com.inspur.ssm.pojo.Drugs;
import com.inspur.ssm.pojo.Userssm;
import com.inspur.ssm.service.DrugsService;
import com.inspur.ssm.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/drugs")
public class DrugsController extends PageController {
    @Autowired
    private DrugsService drugsService;

    //获取药品列表函数
    @RequestMapping("/getDrugsList")
    public String getDrugsList(Model model) {
        List<Drugs> list = drugsService.getDrugsList();
        model.addAttribute("DrugsList",list);
        return "drugsList";
    }

    //添加药品函数
    @RequestMapping("/addDrugs")
    public String addDrugs(Drugs drugs){
        System.out.println("addDrugs___"+drugs);
        drugsService.addDrugs(drugs);
        return "redirect:/drugs/getDrugsList";
    }

    //跳转函数：跳转到修改药品信息页面
    @RequestMapping("/toUpdateDrugs")
    public String updateDrugsPage(int id,Model model){
        Drugs drugs = drugsService.getDrugsById(id);
        model.addAttribute("QDrugs",drugs);
        return "updateDrugs";
    }

    //修改药品信息函数
    @RequestMapping("/updateDrugs")
    public String updateDrugs(Drugs drugs){
        System.out.println("udateDrugs===="+drugs);
        int i =drugsService.updateDrugs(drugs);
        return "redirect:/drugs/getDrugsList";
    }

    //删除药品函数
    @RequestMapping("/deleteDrugs")
    public String deleteDrugsById(int id){
        drugsService.deleteDrugsById(id);
        return "redirect:/drugs/getDrugsList";
    }

    @RequestMapping("/queryDrugs")
    public String queryDrugsByIdName(String drugsid,String name,Model model){
        List<Drugs> list = drugsService.queryDrugeByIdName(drugsid,name);
        model.addAttribute("DrugsList",list);
        return "drugsList";
    }

    @RequestMapping("/tonumaddDrugspage")
    public String tonumaddDrugs(int id,Model model){
        Drugs drugs=drugsService.getDrugsById(id);
        model.addAttribute("QDrugs",drugs);
        return "drugsNumAdd";
    }

    @RequestMapping("/numaddDrugs")
    public String numaddDrugsById(String drugsid,int num,int addnum){
        int totalnum=num+addnum;
        drugsService.numaddDrugsById(drugsid,totalnum);
        return "redirect:/drugs/getDrugsList";
    }

}
