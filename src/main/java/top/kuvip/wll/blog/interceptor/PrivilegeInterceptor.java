package top.kuvip.wll.blog.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import top.kuvip.wll.blog.antity.User;


public class PrivilegeInterceptor  extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		/*String path = UserAction.class.getClassLoader().getResource("admin.properties").getPath();  
		FileInputStream in = new FileInputStream(path);  
		Properties prop = new Properties();  
		prop.load(in);  		*/
		ActionContext ctx = invocation.getInvocationContext();
		Map session = ctx.getSession();
		User user =  (User) session.get("user");
		//这里目前账号只有一个 admin
		if(user!=null){
			//放行			
			return invocation.invoke();			
		}
		System.out.println("return -- " + Action.LOGIN);
		return "toLogin";
	}
}
