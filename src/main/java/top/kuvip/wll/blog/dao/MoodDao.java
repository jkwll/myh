package top.kuvip.wll.blog.dao;

import top.kuvip.wll.blog.antity.Mood;
import top.kuvip.wll.common.dao.BaseDao;

public interface MoodDao extends BaseDao<Mood>{

	void updateById(Mood mood);

	void getNews(Integer i);

}
