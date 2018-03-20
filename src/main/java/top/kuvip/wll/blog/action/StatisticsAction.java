package top.kuvip.wll.blog.action;
import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import top.kuvip.wll.blog.antity.Statistics;
import top.kuvip.wll.blog.service.EssayService;
import top.kuvip.wll.blog.service.StatisticsService;
@Controller("statisticsAction")
@Scope("prototype")
public class StatisticsAction extends ActionSupport {
	@Resource(name="statisticsService")
	StatisticsService  ss ;
	@Resource(name="essayService")
	EssayService  es ;
	Statistics statistics = new Statistics();
	String url;
	
	public StatisticsService getSs() {
		return ss;
	}

	public void setSs(StatisticsService ss) {
		this.ss = ss;
	}

	public Statistics getStatistics() {
		return statistics;
	}

	public void setStatistics(Statistics statistics) {
		this.statistics = statistics;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String add()  {	
		System.out.println("运行了这个add()" + "url==" + url  );		
		statistics.setUrl(url);
		es.getMaxCountEssay();
		return "";
	}	
	
}
