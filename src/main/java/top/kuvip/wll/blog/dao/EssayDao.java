package top.kuvip.wll.blog.dao;

import java.util.List;

import top.kuvip.wll.blog.antity.Essay;
import top.kuvip.wll.blog.antity.EssayType;
import top.kuvip.wll.common.dao.BaseDao;

public interface EssayDao extends BaseDao<Essay>{

	List<Essay> getMaxCountEssay();

	void updateByURL(String url);
	
	
	/*
	 * 查询最新的文章，要几篇就传多少
	 * 
	 */
	List<Essay> getNewsEssay(Integer i);

	 List<Essay> getEssayByEssayType(EssayType et);

	Essay getByUrl(String url);

	void updateEssayCount(String url);

	void updateById(Essay e);
}
