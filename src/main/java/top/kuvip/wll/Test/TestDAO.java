package top.kuvip.wll.Test;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import top.kuvip.wll.blog.antity.Essay;
import top.kuvip.wll.blog.dao.EssayDao;
import top.kuvip.wll.common.dao.impl.BaseDaoImpl;

public class TestDAO   extends BaseDaoImpl<Essay>{
	@SuppressWarnings("unchecked")
	@Test
	public void fun1(){		
		ClassPathXmlApplicationContext app = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		EssayDao ed  =(EssayDao) app.getBean("essayDao");
		Essay e = ed.getById(6);
		System.out.println("*********11" + e.getTitle());
	}
	@Test
	public void fun2(){		
		/*EssayDao ed  =new EssayDaoImpl();
		Essay e = new Essay();
		e = ed.getById(7);
		System.out.println("*********" + e.getTitle());*/
	}


}
