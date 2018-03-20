package top.kuvip.wll.blog.action;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
@Controller("lifeAction")
@Scope("prototype")
public class LifeAction extends EssayAction {
	public String life(){
		return "life";
	}
	
	public String toLife() throws Exception {
		//父类方法已经查询
		 showEssay(2); 
		return "list";
	}
}
