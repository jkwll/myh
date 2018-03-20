package top.kuvip.wll.blog.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import top.kuvip.wll.blog.antity.Essay;
import top.kuvip.wll.blog.antity.User;
import top.kuvip.wll.blog.dao.UserDao;
import top.kuvip.wll.common.dao.impl.BaseDaoImpl;

@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl<Essay> implements UserDao {

	public User getUser(User user) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(User.class);
		criteria.add(Restrictions.eq("userName",user.getUserName()));
		criteria.add(Restrictions.eq("passWord",user.getPassWord()));
		List<User> ulist = criteria.list();
		User tuser =  null;
		if(ulist.size()>0){
			tuser = ulist.get(0);
		}
		return tuser ;
	}

	public User getbyUserNamePassWord(String username, String password) {
		// TODO Auto-generated method stub
		return null;
	}

}
