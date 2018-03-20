package top.kuvip.wll.blog.dao.impl;
import org.springframework.stereotype.Repository;

import top.kuvip.wll.blog.antity.Statistics;
import top.kuvip.wll.blog.dao.StatisticsDao;
import top.kuvip.wll.common.dao.impl.BaseDaoImpl;

@Repository("statisticsDao")
public class StatisticsDaoImpl extends BaseDaoImpl<Statistics> implements StatisticsDao {

	public void updateStatistics(String url) {
		// TODO Auto-generated method stub
		//这里的url是id
		System.out.print("yunxinlezhege   up");
		Statistics statistics = (Statistics)getHibernateTemplate().get(Statistics.class, url);
		Integer n  = statistics.getCount();
		statistics.setCount(++n);
		 getHibernateTemplate().update(statistics);  
	}



}
