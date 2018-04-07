package top.wull.blog.service.impl;

import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import top.wull.blog.antity.Mood;
import top.wull.blog.dao.MoodDao;
import top.wull.blog.service.MoodService;
import top.wull.blog.util.PageBean;
@Service("moodService")
@Transactional(readOnly=false)
public class MoodServiceImpl implements MoodService {
	@Resource(name="moodDao")
	private MoodDao md ;
	public void addMood(Mood mood){
		md.save(mood);
	}
	public List getAllMood() {
		List<Mood> list = md.getAll(Mood.class);
		Collections.reverse(list); // 倒序排列
		return list;
	}
	public PageBean getPageBean(DetachedCriteria dc, Integer currentPage, Integer pageSize) {
		//1 调用Dao查询总记录数
		Integer totalCount = md.getTotalCount(dc);
		//2 创建PageBean对象
		PageBean pb = new PageBean(currentPage, totalCount, pageSize);
		//3 调用Dao查询分页列表数据
		Integer Start = pb.getTotalCount()-pb.getPageSize()*pb.getCurrentPage();
		//到最后一页的时候，start可能会小于零
		if(Start<0){
			pageSize = pageSize + Start;
			Start = 0 ;
		}
		//System.out.println("开始："+Start+"大小："+pageSize);
		List<Mood> list = md.getPageList(dc,Start,pageSize);
		Collections.reverse(list); // 倒序排列
		//4 列表数据放入pageBean中.并返回
		pb.setList(list);
		return pb;
	}
	public Mood getById(Integer id) {
		// TODO Auto-generated method stub
		return md.getById(id);
	}
	public void updateById(Mood mood) {
		// TODO Auto-generated method stub
		md.updateById(mood);
	}
	public void getNews(Integer i) {
		md.getNews(i);
		// TODO Auto-generated method stub
		
	}
}
