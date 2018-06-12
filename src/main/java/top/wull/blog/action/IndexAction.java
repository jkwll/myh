package top.wull.blog.action;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

import top.wull.blog.antity.Essay;
import top.wull.blog.service.EssayService;
import top.wull.blog.service.EssayTypeService;
import top.wull.blog.service.MoodService;
import top.wull.blog.service.MusicService;
import top.wull.blog.util.PageBean;
@Controller("indexAction")
@Scope("prototype")
public class IndexAction extends BaseAction {
	/*
	 * 写在dao里面的方法，连续运行十几次就不行了，不知道为什么
	 * */
	@Resource(name="essayService")
	EssayService  es ;
	@Resource(name="moodService")
	MoodService  ms ;
	Essay e = new Essay();
	private Integer currentPage = 1;
	private Integer pageSize = 6;
	@Resource(name="musicService")
	MusicService  mus ;
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public String life(){
		return "life";
	}
	/**
	 * 获取首页的信息内容
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception {
		PageBean pb = es.getPageBean(currentPage,6);
		ActionContext.getContext().put("news", newEssaylist(6));			
		ActionContext.getContext().put("newEssaylist", newEssaylist(8));			
		ActionContext.getContext().put("showMaxCountEssay", showMaxCountEssay());		
		ActionContext.getContext().put("pageBean", pb);
		ActionContext.getContext().put("music", getRandomMusicUrl());
		return "list";
	}
	
	String getRandomMusicUrl(){
		return mus.getRandomMusicUrl();
	}
	//主页的最新动态
	public List news(){

		return null;
		
	}

}
