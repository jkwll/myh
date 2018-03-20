package top.kuvip.wll.blog.admin.action;
import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import top.kuvip.wll.blog.service.MoodService;
@Controller("staticAction")
@Scope("prototype")
public class StaticAction extends ActionSupport {
	
	public String sendRedirect(){
		//String url = ServletActionContext.getRequest().getPathInfo();
		//System.out.println("url==="  + url);
		System.out.println("21111111111111111111111111111111");
		return SUCCESS;
	}
}
