package top.wull.blog.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import top.wull.blog.antity.User;


public class PrivilegeInterceptor  extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		ActionContext ctx = invocation.getInvocationContext();
		Map session = ctx.getSession();
		User user =  (User) session.get("user");
		//这里目前账号只有一个 admin
		if(user!=null){
			//放行			
			return invocation.invoke();			
		}
		return "toLogin";
	}
}
