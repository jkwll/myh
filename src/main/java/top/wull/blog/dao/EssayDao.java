package top.wull.blog.dao;

import java.util.List;

import top.wull.blog.antity.Essay;
import top.wull.blog.antity.EssayType;
import top.wull.blog.util.PageBean;
import top.wull.common.dao.BaseDao;

public interface EssayDao extends BaseDao<Essay>{

	List<Essay> getMaxCountEssay();

	
	
	/*
	 * 查询最新的文章，要几篇就传多少
	 * 
	 */
	List<Essay> getNewsEssay(Integer i);

	 List<Essay> getEssayByEssayType(EssayType et);

	Essay getByUrl(String url);

	void updateEssayCount(String url);

	void updateById(Essay e);

	Integer getMaxEssayId();

	PageBean getEssayByRecommend(Integer currentPage, Integer pageSize);

	PageBean getPageBean(Integer currentPage, Integer pageSize);



	void updateEssayCountByURL(String url);
}
