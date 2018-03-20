package top.kuvip.wll.blog.service;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import top.kuvip.wll.blog.antity.Essay;
import top.kuvip.wll.blog.antity.EssayType;
import top.kuvip.wll.blog.antity.User;
import top.kuvip.wll.blog.util.PageBean;

public interface UserService {
	public User getUser(User user);

}
