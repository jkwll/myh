package top.wull.blog.service;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import top.wull.blog.antity.Essay;
import top.wull.blog.antity.EssayType;
import top.wull.blog.antity.User;
import top.wull.blog.util.PageBean;

public interface UserService {
	public User getUser(User user);

}
