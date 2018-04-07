package top.wull.blog.admin.action;
import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import top.wull.blog.service.MoodService;
@Controller("adminAction")
@Scope("prototype")
public class AdminAction extends ActionSupport {
	@Resource(name="moodService")
	MoodService  ms ;
	public String about(){
		return "about";
	}
	

	public String knowledgelist(){
		return "knowledgelist";
	}
	public String knowledgeadd(){
		return "knowledgeadd";
	}

	

}
