package top.kuvip.wll.blog.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import top.kuvip.wll.blog.antity.Statistics;
import top.kuvip.wll.blog.dao.EssayDao;
import top.kuvip.wll.blog.dao.StatisticsDao;
import top.kuvip.wll.blog.service.StatisticsService;
@Service("statisticsService")
@Transactional(readOnly=false)
public class StatisticsServiceImpl implements StatisticsService{
	@Resource(name="statisticsDao")
	private StatisticsDao sd ;
	@Resource(name="essayDao")
	private EssayDao ed ;
	public void updateStatistics(Statistics statistics) {
		// TODO Auto-generated method stub
		System.out.println(statistics.getUrl());
		sd.updateStatistics(statistics.getUrl());		
	}
	public void addStatistics(Statistics statistics) {
		// TODO Auto-generated method stub
				sd.save(statistics);
	}
	
	




}
