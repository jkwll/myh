package top.kuvip.wll.blog.action;
import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

import top.kuvip.wll.blog.antity.Essay;
import top.kuvip.wll.blog.antity.EssayType;
import top.kuvip.wll.blog.service.EssayTypeService;
import top.kuvip.wll.blog.util.PageBean;
@Controller("EssayTypeAction")
@Scope("prototype")
public class EssayTypeAction extends EssayAction{
	@Resource(name="essayTypeService")
	EssayTypeService  ets ;
	private Integer currentPage = 1;
	private Integer pageSize = 6;
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	/**
	 * 根据分类查询
	 */
	public String select() throws Exception{
		String url = ServletActionContext.getRequest().getRequestURI();//  /blog/life/ddd
		//url = url.substring(17, url.length());
		String [] urls = url.split("select"); 
		url = urls[1];
		System.out.println("url"  + url);
		//第一步根据url查询Essaytype的id
		EssayType et = ets.getEssayTypeByName(url);
		//第二步根据et查询本类型的Essay
		//方法写好了，但是弃用
		//List<Essay> elist = es.getEssayByEssayType(et);
		DetachedCriteria dc = DetachedCriteria.forClass(Essay.class);
		dc.add(Restrictions.eq("essayType", et));
		PageBean pb = es.getPageBean(dc,currentPage,pageSize);		
		//pb.setList(elist);
		ActionContext.getContext().put("pageBean", pb);
		url  = "/select"+url;
		//传到页面，公用life.jsp的changeapge。不用多写一个 file.jsp
		ActionContext.getContext().put("changeurl", url);
		System.out.println("currentPage======="+currentPage);
		ActionContext.getContext().put("newEssaylist", newEssaylist(8));			
		ActionContext.getContext().put("showMaxCountEssay", showMaxCountEssay());	
		System.out.println("url"  + urls[0]);
		if(urls[0].equals("/blog/knowledge/")){
			ActionContext.getContext().put("EssayType", getEssayType(1));
		}else{
			ActionContext.getContext().put("EssayType", getEssayType(2));			
		}

		return "show";
	} 
	

	
}
