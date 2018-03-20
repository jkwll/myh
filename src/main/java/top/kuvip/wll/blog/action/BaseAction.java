package top.kuvip.wll.blog.action;
import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;

import top.kuvip.wll.blog.antity.Essay;
import top.kuvip.wll.blog.service.EssayService;
import top.kuvip.wll.blog.service.EssayTypeService;
public class BaseAction extends ActionSupport {
	@Resource(name="essayTypeService")
	EssayTypeService  ets ;
	@Resource(name="essayService")
	EssayService  es ;
	Essay essay = new Essay();
	/**
	 * 点击最多的文章
	 * @return
	 * @throws Exception
	 */
	public List<Essay> showMaxCountEssay() throws Exception {
		return es.getMaxCountEssay();
	}
	/**
	 * 最新的文章
	 * @return
	 */
	public List<Essay> newEssaylist(Integer i){
		//System.out.println("ServletActionContext.getRequest()----"+ServletActionContext.getRequest().getRequestURI());
		return es.getNewEssay(i);
	}
	
}
