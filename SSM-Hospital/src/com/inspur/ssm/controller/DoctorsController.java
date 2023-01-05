package com.inspur.ssm.controller;


import com.inspur.ssm.pojo.Doctors;
import com.inspur.ssm.pojo.Userssm;
import com.inspur.ssm.service.DoctorsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/doctors")
public class DoctorsController extends PageController{
    @Autowired
    private DoctorsService doctorsService;

    @RequestMapping("/getDoctorsList")
    public String getDoctorsList(Model model){
        List<Doctors> list = doctorsService.getDoctorsList();
        model.addAttribute("doctorsList",list);
        return "doctorsList";
    }

    @RequestMapping("/addDoctors")
    public String addDoctors(Doctors doctors){
        System.out.println("doctors___"+doctors);
        doctorsService.addDoctors(doctors);
        return "redirect:/doctors/getDoctorsList";
    }

    @RequestMapping("/deleteDoctors")
    public String deleteDoctors(int docid){
        doctorsService.deleteDoctors(docid);
        return "redirect:/doctors/getDoctorsList";
    }

    @RequestMapping("/toUpdateDoctors")
    public String toUpdateDoctors(Model model , int docid){
        Doctors doctors = doctorsService.getDoctorsById(docid);
        model.addAttribute("QDoctors",doctors);
        return "updateDoctors";
    }

    @RequestMapping("updateDoctors")
    public String updateDoctors(Doctors doctors){
        doctorsService.updateDoctors(doctors);
        return "redirect:/doctors/getDoctorsList";
    }

    @RequestMapping("/queryDoctor")
    public String queryDoctor(String docid,String name,String departid, Model model) {
        List<Doctors> list = doctorsService.qureyDoctor(docid,name,departid);

        if (list == null) {
            list = doctorsService.getDoctorsList();
            model.addAttribute("error", "未查到");
        }

        model.addAttribute("doctorsList", list);
        return "doctorsList";
    }
    
}
