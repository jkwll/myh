package top.wull.blog.dao;


import top.wull.blog.antity.Essay;
import top.wull.blog.antity.User;
import top.wull.common.dao.BaseDao;

public interface UserDao extends BaseDao<Essay>{
	public User getbyUserNamePassWord(String username , String password);

	public User getUser(User user);
}
