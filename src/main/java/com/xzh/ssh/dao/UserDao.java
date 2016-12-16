package com.xzh.ssh.dao;


import java.util.List;

import com.xzh.ssh.model.User;
import com.xzh.ssh.util.PageBean;

public interface UserDao {

	User findByUsernameAndPassword(String username, String password);

	void insert(User user);

	List<User> list(PageBean pageBean);

	Long getTotal();
}
