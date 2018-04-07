package top.wull.blog.service.impl;

import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import top.wull.blog.antity.Essay;
import top.wull.blog.antity.EssayType;
import top.wull.blog.antity.User;
import top.wull.blog.dao.EssayDao;
import top.wull.blog.dao.EssayTypeDao;
import top.wull.blog.dao.MoodDao;
import top.wull.blog.dao.UserDao;
import top.wull.blog.service.EssayService;
import top.wull.blog.service.UserService;
import top.wull.blog.util.PageBean;
@Service("userService")
@Transactional(readOnly=false)
public class UserServiceImpl implements UserService{
	
	@Resource(name="userDao")
	private UserDao ud ;

	public User getUser(User user) {
		return ud.getUser(user);
		
	}
	

}
