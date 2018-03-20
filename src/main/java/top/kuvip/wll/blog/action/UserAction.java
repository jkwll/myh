package top.kuvip.wll.blog.action;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import top.kuvip.wll.blog.antity.User;
import top.kuvip.wll.blog.dao.UserDao;
import top.kuvip.wll.blog.service.UserService;
@Controller("userAction")
@Scope("prototype")
public class UserAction extends ActionSupport implements ServletRequestAware {
	User user = new User();
	@Resource(name="userDao")
	private UserDao ud ;	
	@Resource(name="userService")
	private UserService us;
	private String checkcode;
	private HttpServletRequest request ;
	
	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String getCheckcode() {
		return checkcode;
	}
	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}
	public User getUser() {
		return user;
	}
	//这里用户获取jsp页面传来的数据，方法名一定要对的上
	public void setUser(User user) {
		this.user = user;
	}

	public String getUserName() {
		return user.getUserName();
	}

	public void setUserName(String userName) {
		user.setUserName(userName);
	}

	public String getPassWord() {
		return user.getPassWord();
	}

	public void setPassWord(String passWord) {
		user.setPassWord(passWord);
	}
	//后台登录
	public String login() {

		ActionContext ctx = ActionContext.getContext();
		Integer counter = (Integer) ctx.getApplication().get(request.getRemoteHost());
		//小于三次的时候，不用验证验证码 0 1 2
		if(counter==null||counter!=null&&counter<2){
			//输入的验证码正确的时候
			User user = new User();
			user.setUserName(getUserName());
			user.setPassWord(getPassWord());
			User tuser = us.getUser(user);
			System.out.println("login-------"+user.toString());
			if(tuser!=null){
				ActionContext.getContext().getSession().put("user", user);
				System.out.println("设置了session");
				delIP();
				return "index";			
			}
			addActionError("用户名或者密码错误！");
			addcheckvode();
			return "toLogin";
		}

		/**
		 * 验证码验证
		 */
		//从Session中获取生成的验证码
				String validatecode = (String) ServletActionContext.getRequest().getSession().getAttribute("key");
				//校验验证码是否输入正确
				if(checkcode!=null && checkcode.equals(validatecode)){
					//输入的验证码正确的时候
					User user = new User();
					user.setUserName(getUserName());
					user.setPassWord(getPassWord());
					User tuser = us.getUser(user);
					System.out.println("login-------"+user.toString());
					if(tuser!=null){
						ActionContext.getContext().getSession().put("user", user);
						System.out.println("设置了session");
						delIP();
							
						return "index";			
					}
				}else{
					//输入的验证码错误,设置提示信息，跳转到登录页面
					addActionError("输入的验证码错误！");
					addcheckvode();
					return "toLogin";
				}
				addActionError("用户名或者密码错误！");
				addcheckvode();
				return "toLogin";
	}
	//登录成功，之前有ip地址登录失败记录 ，删除ip记录
	private void delIP(){
		ActionContext ctx = ActionContext.getContext();
		Integer counter = (Integer) ctx.getApplication().get(request.getRemoteHost());
		if(counter != null){
			ctx.getApplication().remove(request.getRemoteHost());
		}
	}
	//如果登录失败，记录ip地址 ，然后显示要输入验证码
	private void addcheckvode(){
		ActionContext ctx = ActionContext.getContext();
		Integer counter = (Integer) ctx.getApplication().get(request.getRemoteHost());
		if(counter == null){
			counter = 1;
		}else{
			counter ++;			
		}
		//输入大于n+1的时候，显示验证码
		if(counter>1){
			ActionContext.getContext().put("logincounter", counter);//
		}
		 ctx.getApplication().put(request.getRemoteHost(), counter);
		 System.out.println("ctx==" + ctx+ "request="+request + "ip = "+request.getRemoteHost());	
		 System.out.println("counter="+counter);
	}
	//注销登录
	public String logout() {
		ActionContext.getContext().getSession().remove("user");
		return "toLogin";
	}
	
	
	public void addFieldError(String string) {
		// TODO Auto-generated method stub
		
	}
	public String index(){
		System.out.println("运行了 INDEX123");
		return "index";
	}
	public String toLogin(){
		System.out.println("zheli tologin");
		return "toLogin";
	}
	public void setServletRequest(HttpServletRequest req) {
		// TODO Auto-generated method stub
		this.request = req;
		
	}
	
}
