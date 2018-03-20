package top.kuvip.wll.blog.action;
import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import top.kuvip.wll.blog.antity.LeaveWord;
import top.kuvip.wll.blog.service.LeaveWordService;
@Controller("pageAction")
@Scope("prototype")
public class PageAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	@Resource(name="leaveWordService")
	LeaveWordService  lws ;
	LeaveWord lw = new LeaveWord();
	public String about(){
		return "about";
	}		
	public String index(){
		System.out.println("运行了 INDEX123");
		return "index";
	}
	
		
	public String life(){
		return "life";
	}
	
	public String share(){
		return "share";
	}


}
