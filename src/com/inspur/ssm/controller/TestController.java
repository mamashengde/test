package com.inspur.ssm.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.inspur.ssm.pojo.Userssm;

@Controller
public class TestController {
	/**
	 * 最直接的ajax处理
	 * @param um
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/hello1")
	public ModelAndView handleRequest(Userssm um,HttpServletResponse response)throws IOException {
	   response.setCharacterEncoding("utf-8");
	   response.getWriter().println("{\"id\":\""+um.getId()+"\", \"username\":\""+um.getUsername()+"\"}");
	   return null;
	}
	/**
	 * 数据绑定@RequestBody，前台json数据后台转实体对象
	 * @param um
	 * @return
	 */
	@RequestMapping(value = "/hello", method = RequestMethod.POST,consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Userssm handleRequest(@RequestBody  Userssm um){
//	    System.out.println("the reqBody="+reqBody);
//	    um.setUsername(um.getUsername()+",server");
	    return um;
	} 
	/**
	 * 数据绑定ResponseBody，后台实体自动转前台json
	 * @param reqBody
	 * @param um
	 * @return
	 */
	@RequestMapping(value = "/hello2")
	@ResponseBody 
	public List<Userssm> handleRequest(@RequestBody String reqBody,Userssm um) {
	    System.out.println("the reqBody="+reqBody);
	    um.setUsername(um.getUsername()+",server");
	    List<Userssm> list = new ArrayList<Userssm>();
//	    list.add(um);
	    Userssm um2 = new Userssm();
	    um2.setId("22");
	    um2.setUsername("222");
	    list.add(um2);
	    return list;
	} 
	/**
	 * 5	使用HttpEntity/ResponseEntity来支持Ajax
	 * @param req
	 * @param um
	 * @return
	 */
	@RequestMapping(value = "/hello3")
	public ResponseEntity<List<Userssm>> handleRequest(HttpEntity<String> req, Userssm um) {
	  System.out.println("req headers="+req.getHeaders()+",    reqBody="+req.getBody());
	   um.setUsername(um.getUsername()+",server");
	   List<Userssm> list = new ArrayList<Userssm>();
	   list.add(um);
	   Userssm um2 = new Userssm();
	   um2.setId("22");
	   um2.setUsername("222");
	   list.add(um2);
	   ResponseEntity<List<Userssm>> ret = new ResponseEntity<List<Userssm>>(list,HttpStatus.OK);
	   return ret;
	} 





}
