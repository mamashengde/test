package com.inspur.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inspur.ssm.pojo.Userssm;
import com.inspur.ssm.service.LoginService;

/**
 * 登录控制器
 * @author zhouyeqin
 *
 */
@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	//登录
	@RequestMapping("/login")
	public String login(HttpServletRequest request, Userssm userssm) throws Exception{
		Userssm user = null;
		try{
			//调用service进行用户身份验证
			user = loginService.findUser(userssm);
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("message", e.getMessage());
		}
		if(user!=null){
			HttpSession session = request.getSession();
			//在session中保存用户身份信息
			session.setAttribute("user", user);
			//重定向到商品列表中
			return "index";
		}
		
		return "login";
	}
	//退出
	@RequestMapping("/logout")
	public String logout(HttpSession session)throws Exception {
		// 清除session,直接session过期
		session.invalidate();
		return "login";
	}
	//修改密码
	@RequestMapping("/updatePwd")
	public String updatePwd(HttpServletRequest request,HttpSession session)throws Exception {
		//原密码
		String password1 = request.getParameter("password1");
		//新密码
		String password2 = request.getParameter("password2");
		//新密码确认
		String password3 = request.getParameter("password3");
		//如果有任何一个值为空则返回错误信息
		if(password1 == null || "".equals(password1) 
				|| password2 == null || "".equals(password2)
				|| password3 == null || "".equals(password3)){
			request.setAttribute("message", "请输入原始密码、新密码和确认密码信息!");
			return "userpwdupdate";
		}
		//新密码和新密码确认不相等，返回错误信息
		if(!password2.equals(password3)){
			request.setAttribute("message", "请输入相等的新密码和确认密码!");
			return "userpwdupdate";
		}
		//取出当前登录对象
		Userssm user = (Userssm) session.getAttribute("user");
		if(user != null){
			if(!password1.equals(user.getPassword()) ){
				request.setAttribute("message", "请输入正确的原密码!");
				return "userpwdupdate";
			}
		}
		//更新密码
		user.setPassword(password2);
		loginService.updateByPrimaryKey(user);
		// 清除session,直接session过期
		session.invalidate();
		return "login";
	}
}
