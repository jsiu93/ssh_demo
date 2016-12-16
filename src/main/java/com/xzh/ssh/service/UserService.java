package com.xzh.ssh.service;

import java.util.List;

import com.xzh.ssh.model.User;
import com.xzh.ssh.util.PageBean;

public interface UserService {
	
	User login(String username, String password);

	void insert(User user);

	List<User> list(PageBean pageBean);

	Long getTotal();


}
