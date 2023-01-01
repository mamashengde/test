package com.inspur.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inspur.ssm.pojo.Userssm;
import com.inspur.ssm.service.UserService;
import com.inspur.ssm.util.CommonUtil;
import com.inspur.ssm.util.Page;
import com.inspur.ssm.util.StringUtil;

@Controller
@RequestMapping("/user")
public class UserController extends PageController{

	@Autowired
	private UserService userService;
	
	@RequestMapping("/queryUserList")
	public String findUserList(HttpServletRequest request,@ModelAttribute("userssm") Userssm userssm){
		List<Map<String,Object>> roleList = CommonUtil.getCode("system_role", true, "asc");
		Map<String,Object> params = new HashMap<String,Object>(); 
		//添加查询条件
		if(!StringUtil.isEmptyString(userssm.getId())){
			params.put("id",userssm.getId());
		}
		if(!StringUtil.isEmptyString(userssm.getUsername())){
			params.put("username",userssm.getUsername());
		}
		if(!StringUtil.isEmptyString(userssm.getRole())){
			params.put("role",userssm.getRole());
		}
		
		//获取总条数
		Long totalCount = userService.getCounts(params);
		//设置分页对象
		Page page = executePage(request,totalCount);		
		//如排序
		if(page.isSort()){
			params.put("orderName",page.getSortName());	
			params.put("descAsc",page.getSortState());
		}else{
			//没有进行排序,默认排序方式
			params.put("orderName","id");	
			params.put("descAsc","desc");
		}
		//压入查询参数:开始条数与结束条灵敏
		params.put("startIndex", page.getBeginIndex());
		params.put("endIndex", page.getEndinIndex());
		
		//查询集合		
		List<Userssm> users = userService.getUserList(params);
		request.setAttribute("userList",users);		
		request.setAttribute("roleList", roleList);
		return "adminList";
	}

}
