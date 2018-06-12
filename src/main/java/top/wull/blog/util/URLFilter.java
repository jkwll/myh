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
		//如果是静态资源，直接放行
	    HttpServletRequest httpreq = (HttpServletRequest) request;
        StringBuffer url = httpreq.getRequestURL();
		if(url.indexOf(".js")!=-1||url.indexOf(".css")!=-1||url.indexOf(".jpg")!=-1||url.indexOf(".png")!=-1||url.indexOf(".ico")!=-1){
			chain.doFilter(request, response);
		}else{
			// place your code here
	         //httpreq.getRemoteHost();这个可能是代理的地址
	       // String ip =httpreq.getRemoteHost();
	        //HttpServletResponse httpres = (HttpServletResponse) response;
	       // String urlStr = "http://ip.taobao.com/service/getIpInfo.php";
	        AddressUtils au = new AddressUtils();
	        String ip =au.getRemortIP(httpreq);
	        String ip1 = ip;
	        if(ip.indexOf(",")!=-1){
		        ip1 = ip.substring(0, ip.indexOf(","));
	        }
	        String address = au.getAddresses("ip="+ip1, "utf-8");
	        ias.insertLog(address,url);
		chain.doFilter(request, response);
			
		}
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
