package com.inspur.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inspur.ssm.pojo.Userssm;
import com.inspur.ssm.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;

	// 登录
	@RequestMapping("/login")
	public String login(HttpServletRequest request, Userssm userssm)
			throws Exception {
		Userssm user = null;

		try {
			// 调用service进行用户身份验证
			user = loginService.findUser(userssm);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", e.getMessage() );
		}
		if (user != null) {
			HttpSession session = request.getSession();
			// 在session中保存用户身份信息
			session.setAttribute("user", user);
			// 重定向到登录成功页面
			return "success";
		}
		return "login";
	}
}
