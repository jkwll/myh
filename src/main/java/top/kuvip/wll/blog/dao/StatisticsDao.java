package top.kuvip.wll.blog.dao;

import top.kuvip.wll.blog.antity.Statistics;
import top.kuvip.wll.common.dao.BaseDao;

public interface StatisticsDao extends BaseDao<Statistics>{

	void updateStatistics(String url);


}
