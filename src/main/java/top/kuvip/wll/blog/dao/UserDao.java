package top.kuvip.wll.blog.dao;


import top.kuvip.wll.blog.antity.Essay;
import top.kuvip.wll.blog.antity.User;
import top.kuvip.wll.common.dao.BaseDao;

public interface UserDao extends BaseDao<Essay>{
	public User getbyUserNamePassWord(String username , String password);

	public User getUser(User user);
}
