package com.inspur.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.inspur.ssm.pojo.userrolelist;

import com.inspur.ssm.util.CommonUtil;
import com.inspur.ssm.util.Page;
import com.inspur.ssm.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inspur.ssm.pojo.Userssm;
import com.inspur.ssm.service.UserService;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user")
public class UserController extends PageController{

	@Autowired
	private UserService userService;


        /*@RequestMapping("/queryUserList2")
        public String findUserList(HttpServletRequest request, @ModelAttribute("userssm") Userssm userssm) {
			List<Map<String, Object>> roleList = CommonUtil.getCode("system_role", true, "asc");
			Map<String, Object> userssm2 = new HashMap<String, Object>();
			//添加查询条件
			if (!StringUtil.isEmptyString(userssm.getId())) {
				userssm2.put("id", userssm.getId());
			}
			if (!StringUtil.isEmptyString(userssm.getUsername())) {
				userssm2.put("username", userssm.getUsername());
			}
			if (!StringUtil.isEmptyString(userssm.getRole())) {
				userssm2.put("role", userssm.getRole());
			}

			//获取总条数
			Long totalCount = userService.getCounts(userssm2);
			//设置分页对象
			Page page = executePage(request, totalCount);
			//压入查询参数:开始条数与结束条灵敏
			userssm2.put("startIndex", page.getBeginIndex());
			userssm2.put("endIndex", page.getEndinIndex());

			//查询集合
			List<Userssm> users = userService.getUserList2(userssm2);
			request.setAttribute("userList", users);

			return "adminList";
		}
*/

	@RequestMapping("/queryUserList")
	public String findUserList(Model model) {
		List<Userssm> list = userService.getUserList();
		model.addAttribute("userList",list);
		return "adminList";
	}

	@RequestMapping("/addUser")
	public String add(Userssm userssm){
		System.out.println("addUser___" + userssm);
		userService.addUserssm(userssm);
		return "redirect:/user/queryUserList";
	}

	//跳转到修改用户页面
	@RequestMapping("/toUpdateUser")
	public String updateUserPage(int id,Model model) {
		Userssm userssm=userService.getUserById(id);
		model.addAttribute("QUser",userssm);
		return "updateUser";
	}

	//修改用户信息
	@RequestMapping("/updateUser")
	public String updateUser(Userssm userssm){
		System.out.println("updateUser====" + userssm);
		int i = userService.updateUserById(userssm);
		if (i > 0) {
			System.out.println("添加成功" + userssm);
		}
		return "redirect:/user/queryUserList";
	}

	@RequestMapping("/deleteUser")
	public String deleteUserById(int id){
		userService.deleteUserById(id);
		return "redirect:/user/queryUserList";
	}

	//查询用户
	@RequestMapping("/queryUserssm")
	public String queryUserssm(@RequestParam(value = "id",required = false) String id, @RequestParam(value = "username",required = false) String username, @RequestParam(value = "role",required = false) String role, Model model) {
		List<Userssm> userList = userService.queryUserssmByIdNameRole(id, username, role);

		if (userList == null) {
			userList = userService.getUserList();
			model.addAttribute("error", "未查到");
		}

		model.addAttribute("userList", userList);
		return "adminList";
	}

	//角色从数字转化到所对应的汉字，如'01'-'管理员'
	@RequestMapping("/tranRole")
	public void tranRole(Model model,String role){
		String Role = userService.getRoleByDigit(role);
		model.addAttribute("reaRole",Role);
	}
}
