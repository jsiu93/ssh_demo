package com.xzh.ssh.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.xzh.ssh.model.User;
import com.xzh.ssh.service.UserService;
import com.xzh.ssh.util.PageBean;
import com.xzh.ssh.util.ResponseUtil;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login")
	public String login(String username, String password){
		User user = userService.login(username, password);
		if(user != null){
			return "/main";
		} else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/add")
	public String add(User user){
		userService.insert(user);
		
		return "/admin/userList";
	}
	
	@RequestMapping("/list")
	public String list(Integer limit, Integer offset, HttpServletResponse response) throws Exception{
		PageBean pageBean = new PageBean(offset, limit);
		List<User> userList = userService.list(pageBean);
		JSONObject result = new JSONObject();
		Long total = userService.getTotal();
		JSONArray jsonArray = JSONArray.parseArray(JSON.toJSONString(userList));
		result.put("total", total);
		result.put("rows", jsonArray);
		ResponseUtil.write(response, result);
		return null;
	}
}
