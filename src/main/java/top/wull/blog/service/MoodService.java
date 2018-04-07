package top.wull.blog.service;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import top.wull.blog.antity.Mood;
import top.wull.blog.util.PageBean;

public interface MoodService {
	public void addMood(Mood mood);
	public List getAllMood();
	//分页业务方法
	PageBean getPageBean(DetachedCriteria dc, Integer currentPage, Integer pageSize);
	Mood getById(Integer id);
	public void updateById(Mood mood);
	public void getNews(Integer i);

}
