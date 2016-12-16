package com.xzh.ssh.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xzh.ssh.dao.UserDao;
import com.xzh.ssh.model.User;
import com.xzh.ssh.service.UserService;
import com.xzh.ssh.util.PageBean;

@Service
@Transactional
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	

	@Transactional
	public User login(String username, String password) {
		User user = userDao.findByUsernameAndPassword(username, password);
		if(user != null){
			return user;
		}
		return null;
	}


	@Transactional
	public void insert(User user) {
		userDao.insert(user);
	}


	public List<User> list(PageBean pageBean) {
		return userDao.list(pageBean);
	}


	public Long getTotal() {
		return userDao.getTotal();
	}

}
