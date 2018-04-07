package top.wull.Test;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import top.wull.blog.antity.Essay;
import top.wull.blog.antity.EssayType;
import top.wull.blog.dao.EssayDao;
import top.wull.common.dao.impl.BaseDaoImpl;

public class EssayDaoImplTest extends BaseDaoImpl<Essay> implements EssayDao{
	ClassPathXmlApplicationContext app = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
	SessionFactory sessionFactory = app.getBean("sessionFactory",SessionFactory.class);  
	@Test
	public void test() {
		//fail("Not yet implemented");
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		System.out.println("1111111111111111" );
		Query query = session.createQuery("from Essay");            
		//query.setCacheable(true);  
		List<Essay> list = query.list();
		session.getTransaction().commit();
		System.out.println("11111111111" );
		f();

	}
	public void f(){
		Session session2= sessionFactory.openSession();
		session2.beginTransaction();
		Essay e = (Essay) session2.load(Essay.class, 2);
		System.out.println(e.getEssay_id());
		//List<Essay> list2 = query.list();			
		System.out.println("1111111111111111" );
		
	}

	public List<Essay> getMaxCountEssay() {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateByURL(String url) {
		// TODO Auto-generated method stub
		
	}
	public List getNewsEssay(Integer i) {
		// TODO Auto-generated method stub
		return null;
	}
	public List<Essay> getEssayByEssayType(EssayType et) {
		// TODO Auto-generated method stub
		return null;
	}
	public Essay getByUrl(String url) {
		// TODO Auto-generated method stub
		return null;
	}
	public void updateEssayCount(String url) {
		// TODO Auto-generated method stub
		
	}
	public void updateById(Essay e) {
		// TODO Auto-generated method stub
		
	}

}
