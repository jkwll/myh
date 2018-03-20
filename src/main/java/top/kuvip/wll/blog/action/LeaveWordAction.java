package top.kuvip.wll.blog.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import top.kuvip.wll.blog.antity.LeaveWord;
import top.kuvip.wll.blog.service.LeaveWordService;

/**
 * @author wuliangliang
 *
 */
@Controller("submitLeaveWordAction")
@Scope("prototype")
public class LeaveWordAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	LeaveWord  leaveWord = new LeaveWord();
	@Resource(name="leaveWordService")
	LeaveWordService lws ;
	public void setLws(LeaveWordService lws) {
		this.lws = lws;
	}
	public LeaveWord getLeaveWord() {
		return leaveWord;
	}
	public void setLeaveWord(LeaveWord leaveWord) {
		this.leaveWord = leaveWord;
	}
	public String save(){
		lws.addLeaveWord(leaveWord);
		leaveword();
		return "leaveword"; 
	}
	public String leaveword(){
		List<LeaveWord> lwList = lws.getAllLeaveWord();
		ActionContext.getContext().getValueStack().set("lwList", lwList);
		return "leaveword";
	}

}
