package top.wull.blog.action;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
@Controller("knowledgeAction")
@Scope("prototype")
public class KnowledgeAction extends EssayAction  {
	public String knowledge(){
		return "knowledge";
	}	
	public String toKnowledge() throws Exception {
		//父类方法已经查询
		 showEssay(1); 
		 return "list";
	}	
}
