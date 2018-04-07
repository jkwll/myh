package top.wull.blog.dao;

import top.wull.blog.antity.Mood;
import top.wull.common.dao.BaseDao;

public interface MoodDao extends BaseDao<Mood>{

	void updateById(Mood mood);

	void getNews(Integer i);

}
