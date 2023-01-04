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

    @RequestMapping("/getDrugsList")
    public String getDrugsList(Model model) {
        List<Drugs> list = drugsService.getDrugsList();
        model.addAttribute("DrugsList",list);
        return "drugsList";
    }
}
