package top.wull.Test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import top.wull.blog.action.BaseAction;
import top.wull.blog.action.EssayAction;
import top.wull.blog.antity.Essay;
import top.wull.blog.antity.EssayType;
import top.wull.blog.dao.EssayDao;
import top.wull.blog.dao.impl.EssayDaoImpl;
import top.wull.common.dao.impl.BaseDaoImpl;

public class TestEssayAction   extends BaseDaoImpl<Essay>{
	@SuppressWarnings("unchecked")
	@Test
	public void fun1() throws Exception{		
		ClassPathXmlApplicationContext app = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		EssayAction ea = new EssayAction();
		System.out.println("555555555555555555666666666");
		ea.showEssay(2);
		//ea.showEssay(2);
		System.out.println("555555555555555555666666666");
		//EssayDao ed  =(EssayDao) app.getBean("essayDao");
		//Essay e = ed.getById(6);
		//System.out.println("*********11" + e.getTitle());
	}


}
