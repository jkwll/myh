package top.wull.blog.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import top.wull.blog.antity.Essay;
import top.wull.blog.antity.Mood;
import top.wull.blog.dao.MoodDao;
import top.wull.common.dao.impl.BaseDaoImpl;

@Repository("moodDao")
public class MoodDaoImpl extends BaseDaoImpl<Mood> implements MoodDao{

	public void updateById(Mood mood) {
		
		/*Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(Mood.class);
		criteria.add(Restrictions.eq("mood_id",mood.getMood_id()));
		Mood mood1 = (Mood) criteria.list().get(0);
		//String hql = "UPDATE Essay e SET e.count =123456 WHERE e.essay_id = 58";
		//String sql = "UPDATE mood SET content = "+mood1.getContent()+" WHERE essay_id = "+mood1.getMood_id();
		String sql = "UPDATE mood SET content = 'dddddd' WHERE mood_id = '20'";
		//getSessionFactory().openSession().createSQLQuery(sql).executeUpdate();用他，多次运行就卡死
		getSessionFactory().getCurrentSession().createSQLQuery(sql).executeUpdate();*/
		// TODO Auto-generated method stub
		
		
		//UPDATE mood SET content = '123456', WHERE mood_id = 2
		//文字一定要加 ''
		String sql;
		if(mood.getPicsrc()!=null){
			 sql = "UPDATE mood SET time = '"+mood.getTime()+"', content = '"+mood.getContent()+"', flag="+mood.getFlag()+", picsrc='"+mood.getPicsrc()+"' WHERE mood_id = '"+mood.getMood_id()+"'";			
		}else{
			 sql = "UPDATE mood SET time = '"+mood.getTime()+"', content = '"+mood.getContent()+"', flag="+mood.getFlag()+" WHERE mood_id = '"+mood.getMood_id()+"'";			
		}

		getSessionFactory().getCurrentSession().createSQLQuery(sql).executeUpdate();		
	}

	public void getNews(Integer i) {
		// TODO Auto-generated method stub
		
	} 

}
