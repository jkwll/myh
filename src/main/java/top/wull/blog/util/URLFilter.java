package top.wull.blog.util;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import top.wull.blog.dao.EssayDescDao;
import top.wull.blog.dao.IpDao;
import top.wull.blog.dao.impl.IpDaoImpl;
import top.wull.blog.service.IpAddressService;
import top.wull.blog.service.MoodService;
import top.wull.blog.service.impl.IpAddressServiceImpl;

/**
 * Servlet Filter implementation class URLFilter
 */
public class URLFilter implements Filter {
	//@Resource(name="ipAddressService")
	IpAddressService  ias ;
	//IpAddressService  ias = new IpAddressServiceImpl() ;

    /**
     * Default constructor. 
     */
    public URLFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
	       HttpServletRequest httpreq = (HttpServletRequest) request;
	        StringBuffer url = httpreq.getRequestURL();
	        String ip = httpreq.getRemoteHost();

	        //HttpServletResponse httpres = (HttpServletResponse) response;
	        System.out.println("url:"+url);
	        System.out.println("ip:"+ip);
	        String urlStr = "http://ip.taobao.com/service/getIpInfo.php";
	        AddressUtils au = new AddressUtils();
	        //获得地址
	        String address = au.getAddresses("ip="+ip, "utf-8");
	        String[] arrayStr = address.split(",");
	        String addressip = arrayStr[1].substring(14, arrayStr[1].length()-1);//地址
	        String address1 = arrayStr[2].split(":")[1].replaceAll("\"", "");//国家
	        String address2 = arrayStr[3].split(":")[1].replaceAll("\"", "");//或者地区
	        String address3 = arrayStr[4].split(":")[1].replaceAll("\"", "");//省份
	        String address4 = arrayStr[5].split(":")[1].replaceAll("\"", "");//城市
	        String address5 = arrayStr[6].split(":")[1].replaceAll("\"", "");//地区
	        String address6 = arrayStr[7].split(":")[1].replaceAll("\"", "");//公司
	        System.out.println("ip:" +addressip );
	        System.out.println("地址:" +address1+address2+address3+address4+address5);
	        System.out.println("公司:" +address6 );

	        ias.insertLog(address,url);

		// pass the request along the filter chain
		chain.doFilter(request, response);
	}
	
	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		ServletContext context = fConfig.getServletContext(); 

		ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(context); 
		ias =  ctx.getBean(IpAddressService.class); 
	}

}
