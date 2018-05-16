package Test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import top.wull.blog.antity.Mood;
import top.wull.blog.dao.impl.EssayDaoImpl;
import top.wull.blog.dao.impl.MoodDaoImpl;
import top.wull.blog.service.impl.MoodServiceImpl;

public class TestMoodUploadAction  extends BaseJunit4Test{
	   @Autowired //自动注入  
	    private MoodDaoImpl moodDaoImpl;  
	    @Test  
	    @Transactional   //标明此方法需使用事务    
	    @Rollback(false)  //标明使用完此方法后事务不回滚,true时为回滚   
	 public void fun(){
		Mood m = new Mood();
		m.setMood_id(41);
		m.setHpicsrc("h123213");
		m.setPicsrc("123213");
		System.out.println("123");
		moodDaoImpl.updateById(m);
	 }
}
