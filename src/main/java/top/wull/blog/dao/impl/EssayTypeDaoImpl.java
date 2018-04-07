package top.wull.blog.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import top.wull.blog.antity.EssayType;
import top.wull.blog.dao.EssayTypeDao;
import top.wull.common.dao.impl.BaseDaoImpl;

@Repository("essayTypeDao")
public class EssayTypeDaoImpl extends BaseDaoImpl<EssayType> implements EssayTypeDao {

	public List getByFalg(int i) {
		// TODO Auto-generated method stub
		/*String hql = "FROM EssayType et WHERE et.flag = "+i;
		Query query =getHibernateTemplate().getSessionFactory().openSession().createQuery(hql);
		List<EssayType> etlist =query.list();
		for (EssayType essayType : etlist) {
			System.out.println("essayType.getName()------"+essayType.getName());
		}
		return etlist;*/
		return null;
	}

	public List<EssayType> getEssayTypeByFlag(Integer i) {
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(EssayType.class);
		criteria.addOrder(Order.asc("type_id"));
		criteria.add(Restrictions.eq("flag",i+""));
		 List<EssayType> etlist =criteria.list();
		return etlist;
	}

	public EssayType getEssayTypeByName(String typename) {
		Session session = getSessionFactory().getCurrentSession();
		Criteria criteria = session.createCriteria(EssayType.class);
		criteria.add(Restrictions.eq("url",typename));
		 EssayType et =(EssayType) criteria.list().get(0);
		return et;
	}

}
