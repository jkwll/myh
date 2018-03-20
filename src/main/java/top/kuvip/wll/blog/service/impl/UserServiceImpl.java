package top.kuvip.wll.blog.service.impl;

import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import top.kuvip.wll.blog.antity.Essay;
import top.kuvip.wll.blog.antity.EssayType;
import top.kuvip.wll.blog.antity.User;
import top.kuvip.wll.blog.dao.EssayDao;
import top.kuvip.wll.blog.dao.EssayTypeDao;
import top.kuvip.wll.blog.dao.MoodDao;
import top.kuvip.wll.blog.dao.UserDao;
import top.kuvip.wll.blog.service.EssayService;
import top.kuvip.wll.blog.service.UserService;
import top.kuvip.wll.blog.util.PageBean;
@Service("userService")
@Transactional(readOnly=false)
public class UserServiceImpl implements UserService{
	
	@Resource(name="userDao")
	private UserDao ud ;

	public User getUser(User user) {
		return ud.getUser(user);
		
	}
	

}
