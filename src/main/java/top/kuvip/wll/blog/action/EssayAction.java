package top.kuvip.wll.blog.action;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

import top.kuvip.wll.blog.antity.Essay;
import top.kuvip.wll.blog.antity.EssayType;
import top.kuvip.wll.blog.antity.Mood;
import top.kuvip.wll.blog.service.EssayService;
import top.kuvip.wll.blog.service.EssayTypeService;
import top.kuvip.wll.blog.util.PageBean;
@Controller("EssayAction")
@Scope("prototype")
public class EssayAction extends BaseAction{
	@Resource(name="essayTypeService")
	EssayTypeService  ets ;
	@Resource(name="essayService")
	EssayService  es ;
	Essay essay = new Essay();
	String url;
	String content;
	String time;
	String title;
	String essay_id;
	
	private String characters; //搜索的关键字
	private Integer currentPage = 1;
	private Integer pageSize = 6;	
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	public String getCharacters() {
		return characters;
	}
	public void setCharacters(String characters) {
		this.characters = characters;
	}
	//i表示查询那个类型的文章  2类 学习和生活
	public String showEssay(int i) throws Exception {
		//封装离线查询对象
		DetachedCriteria dc = DetachedCriteria.forClass(Essay.class);
		//判断并封装参数
		dc.add(Restrictions.eq("flag", i)); //flag=1 就是学无止境
		dc.addOrder(Order.asc("time"));
		//1 调用Service查询分页数据(PageBean)
		PageBean pb = es.getPageBean(dc,currentPage,pageSize);
		//2 将PageBean放入request域,转发到列表页面显示
		//es.getPageBean2(currentPage, pageSize);
		ActionContext.getContext().put("pageBean", pb);
		ActionContext.getContext().put("EssayType", getEssayType(i));

		//用到了session缓存、同一台浏览器，对应用一个session，这里说明用户已经是第二次访问这里了

		//关于详细介绍，查看笔记本
		/*if(ActionContext.getContext().getSession().get("EssayType")!=null){
			System.out.println("111111zheliddd+ActionContext.getContext().getSession()"+ActionContext.getContext().getSession());
			//运行这里不不用查询数据库
			ActionContext.getContext().put("EssayType",ActionContext.getContext().getSession().get("EssayType"));			
		}else{
			//先把查询到的数据放到session里面，然后再传到context分享到jsp页面
			ActionContext.getContext().getSession().put("EssayType", getEssayType(i));
			ActionContext.getContext().put("EssayType", getEssayType(i));
		}	*/	
		commonSelect();
		return "list";
	}
	public void commonSelect() throws Exception{
		ActionContext.getContext().put("newEssaylist", newEssaylist(6));
		ActionContext.getContext().put("showMaxCountEssay", showMaxCountEssay());
		
	}
	public String lookEssay() throws Exception{
		//ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
		//这里不支持中文，所以jsp的名字暂时不能为中文
		String url = ServletActionContext.getRequest().getRequestURI();
		int n = url.indexOf("knowledge");
		if(n == -1 ){
		 n = url.indexOf("life");			
		}
		url = url.substring(n, url.length());
		//查询文章信息
		Essay essay = es.getByUrl(url);
		if(essay!=null){
			//浏览次数+1 
			es.updateEssayCount(url);			
		}
		ActionContext.getContext().put("EssayType", getEssayType(Integer.valueOf(essay.getEssayType().getFlag())));

		ActionContext.getContext().put("lookEssay", essay);
		if(es.getByUrl(url)!=null){
			ActionContext.getContext().put("newEssaylist", newEssaylist(6));
			ActionContext.getContext().put("showMaxCountEssay", showMaxCountEssay());
			return "look";
		}
		return null;
	}
	/*
	 * 文章搜索
	 */
	public String search() throws Exception{
		//封装离线查询对象
		DetachedCriteria dc = DetachedCriteria.forClass(Essay.class);
		//判断并封装参数
		dc.add(Restrictions.or(Restrictions.like("keywords", "%"+characters+"%"),
				Restrictions.like("title", "%"+characters+"%"))); 
		dc.addOrder(Order.asc("time"));
		PageBean pb = es.getPageBean(dc,currentPage,pageSize);
		ActionContext.getContext().put("pageBean", pb);
		System.out.println("characters-----------"+characters);
		
		//用到了session缓存、同一台浏览器，对应用一个session，这里说明用户已经是第二次访问这里了
				//关于详细介绍，查看笔记本
				if(ActionContext.getContext().getSession().get("EssayType")!=null){
					System.out.println("111111zheliddd+ActionContext.getContext().getSession()"+ActionContext.getContext().getSession());
					//运行这里不不用查询数据库
					ActionContext.getContext().put("EssayType",ActionContext.getContext().getSession().get("EssayType"));			
				}else{
					//先把查询到的数据放到session里面，然后再传到context分享到jsp页面
					ActionContext.getContext().getSession().put("EssayType", getEssayType(1));
					ActionContext.getContext().put("EssayType", getEssayType(1));
				}		
				ActionContext.getContext().put("newEssaylist", newEssaylist(6));
				ActionContext.getContext().put("showMaxCountEssay", showMaxCountEssay());
		
		return "show";
	}
	/**
	 * 文章导航栏
	 * @return
	 */
	public List<EssayType> getEssayType(Integer i){
		return ets.getEssayTypeByFlag(i);
	}
	/**
	 * 添加文章点击次数
	 * @return
	 */
	public String addCount(){
		es.updateByURL(url);
		return "essayadd";
	}
	public String test(){
		String url = this.getClass().getResource("/").getPath();
		System.out.println("url=="+url);
		return "essaytest";
	}
	public String getUrl() {
		return url;
	}
	/*public String admin() {
		return "essayadmin";
	}*/
	

	public void setUrl(String url) {
		this.url = url;
	}
	

	
}
