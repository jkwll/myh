package top.kuvip.wll.blog.service;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import top.kuvip.wll.blog.antity.Mood;
import top.kuvip.wll.blog.util.PageBean;

public interface MoodService {
	public void addMood(Mood mood);
	public List getAllMood();
	//分页业务方法
	PageBean getPageBean(DetachedCriteria dc, Integer currentPage, Integer pageSize);
	Mood getById(Integer id);
	public void updateById(Mood mood);
	public void getNews(Integer i);

}
