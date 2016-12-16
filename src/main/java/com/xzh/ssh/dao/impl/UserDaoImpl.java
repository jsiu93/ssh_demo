package com.xzh.ssh.dao.impl;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;
import com.xzh.ssh.dao.UserDao;
import com.xzh.ssh.model.User;
import com.xzh.ssh.util.PageBean;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return this.sessionFactory.getCurrentSession();
	}
	
	public void close(Session session){
		if(session != null){
			session.close();
		}
	}
	
	public User findByUsernameAndPassword(String username, String password) {
		String hql = "from User u where u.username = :username and u.password = :password";
		Query query = this.getSession().createQuery(hql);
		query.setParameter("username", username).setParameter("password", password);
		User user = (User) query.uniqueResult();
		
		return user;
	}

	public void insert(User user) {
		getSession().save(user);
	}

	public List<User> list(PageBean pageBean) {
		List<User> userList = Lists.newArrayList();
		String hql = "from User u";
		Query q = this.getSession().createQuery(hql);
		userList = q.setFirstResult(pageBean.getPage()).setMaxResults(pageBean.getPageSize()).list();
		return userList;
	}

	public Long getTotal() {
		String hql = "select count(*) from User";
		Query q = this.getSession().createQuery(hql);
		Long total = (Long) q.uniqueResult();
		return total;
	}

}
