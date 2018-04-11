package Test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;  
import org.springframework.transaction.annotation.Transactional;  
import top.wull.blog.dao.impl.EssayDaoImpl;

public class TestDao extends BaseJunit4Test{
	   @Autowired //自动注入  
	    private EssayDaoImpl essayDaoImpl;  
	    @Test  
	    @Transactional   //标明此方法需使用事务    
	    @Rollback(false)  //标明使用完此方法后事务不回滚,true时为回滚   
	    public void test(){  
	        System.out.println("测试Spring整合Junit4进行单元测试");  
	        Integer i = essayDaoImpl.getMaxEssayId();
	          System.out.println(i);
	        
	    }  
}
