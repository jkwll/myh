package top.wull.blog.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import top.wull.blog.antity.Essay;
import top.wull.blog.antity.IpAddress;
import top.wull.blog.dao.IpDao;
import top.wull.blog.util.AddressUtils;
import top.wull.common.dao.impl.BaseDaoImpl;

@Repository("ipDao")
@SuppressWarnings("unchecked")
public class IpDaoImpl extends BaseDaoImpl<IpAddress> implements IpDao {

	public void insertLog(String address, StringBuffer url) {
        String[] arrayStr = address.split(",");
        String code = arrayStr[0].substring(8,9);
        String addressip = arrayStr[1].substring(14, arrayStr[1].length()-1);//地址
        String country = arrayStr[2].split(":")[1].replaceAll("\"", "");//国家
        String area = arrayStr[3].split(":")[1].replaceAll("\"", "");//或者地区
        String region = arrayStr[4].split(":")[1].replaceAll("\"", "");//省份
        String city = arrayStr[5].split(":")[1].replaceAll("\"", "");//城市
        String county = arrayStr[6].split(":")[1].replaceAll("\"", "");//地区
        String isp = arrayStr[7].split(":")[1].replaceAll("\"", "");//公司
        System.out.println("ip:" +addressip );
        Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date2 = format.format(date);
        String sql = "INSERT INTO IpAddress (code,ip,country,area,region,city,county,isp,url,time)VALUE('"+code+"','"+addressip+"','"+country+"','"+area+"','"+region+"','"+city+"','"+county+"','"+isp+"','"+url+"','"+date2+"')";
		//Session session = getSessionFactory().getCurrentSession();
		Session session = getSessionFactory().getCurrentSession();
		
		if (null==session){
			session=getSessionFactory().openSession();
		}
		System.out.println("111111111111111111111111");
		Query query= session.createSQLQuery(sql);
		//query.setString(1, roleId); 这里也可以用预编译
		query.executeUpdate();
	}

	

}
