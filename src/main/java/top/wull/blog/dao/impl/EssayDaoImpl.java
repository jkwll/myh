package top.wull.blog.dao.impl;

import java.util.Collections;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.FlushMode;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import top.wull.blog.antity.Essay;
import top.wull.blog.antity.EssayType;
import top.wull.blog.dao.EssayDao;
import top.wull.blog.util.PageBean;
import top.wull.common.dao.impl.BaseDaoImpl;

@Repository("essayDao")
@SuppressWarnings("unchecked")
public class EssayDaoImpl extends BaseDaoImpl<Essay> implements EssayDao {
	


	public List<Essay> getMaxCountEssay() {
		/*
		 * 运行这段代码，连续10几次就会出问题
		 * 
		 * hql待写
		 * SELECT * FROM essay ORDER BY count desc
		String hql = "FROM Essay";
		Query query =getHibernateTemplate().getSessionFactory().openSession().createQuery(hql);
		List<Essay> elist =query.list();
		for (Essay essay : elist) {
			System.out.println("essay---------" + essay.toString());
		}
		System.out.println("essay---------132");*/
		  	//封装离线查询对象
			//getPageBean默认是倒序的
			Session session = getSessionFactory().getCurrentSession();
			Criteria criteria = session.createCriteria(Essay.class);
			criteria.addOrder(Order.desc("count"));
			criteria.setMaxResults(5);
			List<Essay> elist =criteria.list();
			return elist;
	}
	public List<Essay> getNewsEssay(Integer i) {
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(Essay.class);
		criteria.setMaxResults(i);
		criteria.addOrder(Order.desc("essay_id"));
		List<Essay> elist = criteria.list();
		return elist;
	}
	public  List<Essay> getEssayByEssayType(EssayType et) {
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(Essay.class);
		criteria.add(Restrictions.eq("essayType",et));
		List<Essay> elist = criteria.list();
		return elist;
		// TODO Auto-generated method stub
		
	}
	
	public Essay getByUrl(String url) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(Essay.class);
		criteria.add(Restrictions.eq("url",url));
		return  (Essay) criteria.list().get(0);
	}
	//每次点击文章Count添加一次
	public void updateEssayCount(String url) {
		String sql = "UPDATE essay SET count = count+1 WHERE url = '"+url+"'";
		System.out.println("这里");
		//getSessionFactory().openSession().createSQLQuery(sql).executeUpdate();用他，多次运行就卡死 session没有关闭,需要手动关闭，如果不关闭将导致session关联的数据库连接无法释放，最后资源耗尽而使程序当掉。
		//getSessionFactory().openSession().close();
		getSessionFactory().getCurrentSession().createSQLQuery(sql).executeUpdate();
	}
	public void updateById(Essay essay) {
		// TODO Auto-generated method stub
		//文字一定要加 ''
		String sql = "";
		if(essay.getPicsrc()!=null){
			 sql = "UPDATE essay SET title = '"+essay.getTitle()+"',recommend = '"+essay.getRecommend()+"', flag="+essay.getFlag()+", picsrc='"+essay.getPicsrc()+"', introduction='"+essay.getIntroduction()+"' WHERE essay_id = '"+essay.getEssay_id()+"'";			
		}else{
			//没有更新图片的情况下pic = null
		sql = "UPDATE essay SET title = '"+essay.getTitle()+"',recommend = '"+essay.getRecommend()+"', flag="+essay.getFlag()+", introduction='"+essay.getIntroduction()+"' WHERE essay_id = '"+essay.getEssay_id()+"'";			
		}
		//先查询原有的排序
/*查询方法一、离线查询
 * 		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(Essay.class);
		criteria.add(Restrictions.eq("essay_id",essay.getEssay_id()));
		Essay e = (Essay)criteria.list().get(0);
		Integer recommend = e.getRecommend();
*/
/*		String sql = "SELECT url FROM music M JOIN (SELECT CEIL(MAX(music_id)*RAND()) AS ID FROM music) AS m ON M.music_id >= m.ID LIMIT 1";
		SQLQuery q =getSessionFactory().getCurrentSession().createSQLQuery(sql);
		if( q.list().get(0) == null ){
			return "";
		}
		return (String) q.list().get(0);		
		}
*/
		
		
		//原生sql查询
		String selectRecommendSql = "SELECT recommend FROM essay WHERE essay_id = "+essay.getEssay_id();
		//这种查询只能查一个字段？
		SQLQuery q =getSessionFactory().getCurrentSession().createSQLQuery(selectRecommendSql);
		
		Integer recommend = (Integer) q.list().get(0);
		
		//如果有变化，就更新排序
		if(!recommend.equals(essay.getRecommend())){
			String sql2 = "";
			//比较是排名增加还是较少（越靠前，recommend越小）
			//如果是增加了排名（减少了值）
			//sql参考：https://blog.csdn.net/u011687186/article/details/70255503
			if(essay.getRecommend().intValue()<recommend.intValue()){
				//sql2 将范围内的文章的排名移后， 设置排名往前的情况     >=essay.getRecommend()并且小于原先的值（设置的值）的文章   原先的值>recommend>设置的值 的文章 +1（即移后1）
				sql2 = "UPDATE essay AS a SET a.recommend = a.recommend+1 WHERE a.essay_id  IN (	SELECT	tmp.essay_id FROM ( SELECT b.essay_id  FROM essay AS b WHERE b.recommend >= "+essay.getRecommend()+" and  b.recommend <"+recommend+" ) tmp ) "; 				
			}else{
				
				//这里的else和  if(essay.getRecommend().intValue()>recommend.intValue())效果一样
				//sql2 将范围内的文章的排名移前， 设置排名往后的情况     >=essay.getRecommend()并且小于原先的值（设置的值）的文章   原先的值>recommend>设置的值 的文章 -1（即移后1）
				sql2 = "UPDATE essay AS a SET a.recommend = a.recommend-1 WHERE a.essay_id  IN (	SELECT	tmp.essay_id FROM ( SELECT b.essay_id  FROM essay AS b WHERE b.recommend <= "+essay.getRecommend()+" and  b.recommend >"+recommend+" ) tmp ) "; 				
			}
			//先updata 排序问题
			getSessionFactory().getCurrentSession().createSQLQuery(sql2).executeUpdate();	
		}
		getSessionFactory().getCurrentSession().createSQLQuery(sql).executeUpdate();				
		
	}
	
	public Integer getMaxEssayId() {
		// TODO Auto-generated method stub
		//getSessionFactory().getCurrentSession().createSQLQuery(sql).executeUpdate();	
		String sql = "SELECT MAX(essay_id) FROM essay";
		SQLQuery q =getSessionFactory().getCurrentSession().createSQLQuery(sql);
		if( q.list().get(0) == null ){
			return 0;
		}
		return (Integer) q.list().get(0);		
	}

	public PageBean getEssayByRecommend(Integer currentPage, Integer pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	public PageBean getPageBean(Integer currentPage, Integer pageSize) {
/*		DetachedCriteria dc = DetachedCriteria.forClass(Essay.class);
		dc.addOrder(Order.asc("recommend"));
        Criteria criteria =  dc.getExecutableCriteria(getSessionFactory().getCurrentSession());            
        criteria.setMaxResults(3);  
*/		//return  (Essay) criteria.list().get(0);
		DetachedCriteria dc = DetachedCriteria.forClass(Essay.class);
		//1 调用Dao查询总记录数
		//Integer  totalCount = getTotalCount(dc);
		String sql = "SELECT count(*) FROM essay  WHERE recommend != 0";
		//注意要写toString   https://zhidao.baidu.com/question/560802597.html
		Integer totalCount =Integer.parseInt(getSessionFactory().getCurrentSession().createSQLQuery(sql).list().get(0).toString());
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
		sql = "SELECT * FROM essay  WHERE recommend != 0 ORDER BY recommend DESC LIMIT "+Start+","+pageSize;
		SQLQuery q =getSessionFactory().getCurrentSession().createSQLQuery(sql).addEntity(Essay.class);
		List<Essay> list= q.list();
		//List<Essay> list = getPageList(dc,Start,pageSize);		
		Collections.reverse(list); // 倒序排列
		//4 列表数据放入pageBean中.并返回
		pb.setList(list);
		return pb;
		
	}
	public void updateEssayCountByURL(String url) {
		// TODO Auto-generated method stub
		
	}
	

}
