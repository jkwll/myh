package top.wull.blog.dao;

import top.wull.blog.antity.Statistics;
import top.wull.common.dao.BaseDao;

public interface StatisticsDao extends BaseDao<Statistics>{

	void updateStatistics(String url);


}
