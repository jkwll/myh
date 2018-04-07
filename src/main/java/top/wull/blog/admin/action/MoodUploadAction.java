package top.wull.blog.admin.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.Context;
import org.apache.catalina.connector.Response;
import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.hibernate.engine.transaction.jta.platform.internal.SynchronizationRegistryBasedSynchronizationStrategy;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionChainResult;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import top.wull.blog.antity.Mood;
import top.wull.blog.service.MoodService;
import top.wull.blog.util.PageBean;
import top.wull.blog.util.PictureChangeSize;

@Controller("moodUploadAction")
@Scope("prototype")
public class MoodUploadAction extends ActionSupport
{	@Resource(name="moodService")
MoodService  ms ;
Mood mood ;
private String picsrc;

private Integer mood_id;
private String content;
	// 封装上传文件域的属性
	private File upload;
	// 封装上传文件类型的属性
	private String uploadContentType; //image/png
	// 封装上传文件名的属性
	private String uploadFileName;
	// 直接在struts.xml文件中配置的属性
	private String savePath;
	private Integer flag1;//下面转换成Integer类型
	private String flag;//只能用string接受，保存数据库是用Integer
	private Integer currentPage = 1;
	private Integer pageSize = 9;	
	private String mood_content;
	private String time;
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getMood_content() {
		return mood_content;
	}
	public void setMood_content(String mood_content) {
		this.mood_content = mood_content;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public void setContent(String content) {
		this.content = content;
	}
	// 接受struts.xml文件配置值的方法
	public void setSavePath(String value)
	{
		this.savePath = value;
	}
	// 获取上传文件的保存位置
	private String getSavePath() throws Exception
	{
		return ServletActionContext.getServletContext()
			.getRealPath(savePath);
	}


	public String getContent()
	{
		return (this.content);
	}

	// upload的setter和getter方法
	public void setUpload(File upload)
	{
		this.upload = upload;
	}
	public File getUpload()
	{
		return (this.upload);
	}

	
	public Integer getMood_id() {
		return mood_id;
	}
	public void setMood_id(Integer mood_id) {
		this.mood_id = mood_id;
	}
	// uploadContentType的setter和getter方法
	public void setUploadContentType(String uploadContentType)
	{
		this.uploadContentType = uploadContentType;
	}
	public String getUploadContentType()
	{
		return (this.uploadContentType);
	}

	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	
	public Integer getFlag1() {
		return flag1;
	}
	public void setFlag1(Integer flag1) {
		this.flag1 = flag1;
	}
	// uploadFileName的setter和getter方法
	public void setUploadFileName(String uploadFileName)
	{
		this.uploadFileName = uploadFileName;
	}
	public String getUploadFileName()
	{
		return (this.uploadFileName);
	}


	public String getPicsrc() {
		return picsrc;
	}
	public void setPicsrc(String picsrc) {
		this.picsrc = picsrc;
	}
	@Override
	public String toString() {
		return "MoodUploadAction [ms=" + ms + ", mood=" + mood + ", picsrc=" + picsrc + ", content=" + content
				+ ", upload=" + upload + ", uploadContentType=" + uploadContentType + ", uploadFileName="
				+ uploadFileName + ", savePath=" + savePath + ", flag=" + flag + "]";
	}
	public String add() {
		return "moodadd";
	}
	public String Upload() {
		System.out.println("madebi");
		return "moodadd";
	}
	
	@Override
	public String execute() throws Exception
	{String luepicSrc="";
	String luepicsrc="";
	if( ! uploadContentType.substring(0,"image".length()).equals("image")){
		ActionContext.getContext().put("prompt_message", "发布失败，上传的文件不是图片！");
		return "moodAdd";
	}
	
		if(this.uploadFileName!=null){
			// 以服务器的文件保存地址和原文件名建立上传文件输出流
			FileOutputStream fos = new FileOutputStream(getSavePath()
				+ "\\" + getUploadFileName());
			FileInputStream fis = new FileInputStream(getUpload());
			byte[] buffer = new byte[1024];
			int len = 0;
			//输出文件到硬盘上
			while ((len = fis.read(buffer)) > 0){
				fos.write(buffer , 0 , len);
			}
			fos.close();
			
			//略缩图
			picsrc = this.savePath.substring(1,this.savePath.length())+"/"+getUploadFileName();//   webfile/images/113801a7cee.jpg
			//获取项目路径D:\tomcat8\webapps\blog
			String crSrc = ServletActionContext.getServletContext().getRealPath(File.separator);
			//未压缩图片真实路径D:\tomcat8\webapps\blog/webfile/images/113801a7cee.jpg
			String picSrc = crSrc +"\\"+ picsrc;
			int length  =uploadFileName.lastIndexOf(".");
			String filename = uploadFileName.subSequence(0,length )+"lue"+uploadFileName.subSequence(length,uploadFileName.length()) ;
			//保存到数据库中的相对路径
			luepicsrc = this.savePath.substring(1,this.savePath.length())+"/"+filename;//   webfile/images/113801a7cee.jpg
			luepicSrc = picSrc.substring(0, picSrc.length()-uploadFileName.length())+ filename;
			
			PictureChangeSize.compressImage(picSrc, luepicSrc, 500);
		}
		Integer f = null;
		//flag1：是否显示出来
		if(flag!=null&&flag.equals("on")){
			 flag1 = 1;
		}else{
			flag1=0;
		}
		mood = new Mood(null, content, new Date(), luepicsrc,flag1);
		ms.addMood(mood);
		ActionContext.getContext().put("prompt_message", "发布成功");
		return "moodAdd";
	}
	/*
	 * 后台对说说的操作
	 */
	public String admin() throws FileNotFoundException, Exception{
		//搜索的时候
		if(mood_content!=null&&!mood_content.equals("")){
			selectmood();
			return "moodadmin";
		}
		//点击修改的时候，显示编辑页面
		if(mood_id!=null&&content==null){
			editmood();
			return "moodedit";
		}
		//点击更新的时候，更新数据库
		if(content!=null){
			updatemood();
		}
		//封装离线查询对象
		DetachedCriteria dc = DetachedCriteria.forClass(Mood.class);
		dc.addOrder(Order.asc("time"));
		//1 调用Service查询分页数据(PageBean)
		PageBean pb = ms.getPageBean(dc,currentPage,pageSize);
		ActionContext.getContext().put("pageBean", pb);
		return "moodadmin";
	}
	public void selectmood(){
		//封装离线查询对象
		DetachedCriteria dc = DetachedCriteria.forClass(Mood.class);
		dc.add(Restrictions.like("content","%"+mood_content+"%"));
		System.out.println(" mood_content" +  mood_content);
		//1 调用Service查询分页数据(PageBean)
		PageBean pb = ms.getPageBean(dc,currentPage,pageSize);
		ActionContext.getContext().put("pageBean",pb);
	}
	public void updatemood() throws FileNotFoundException, Exception{

		if(upload!=null&& ! uploadContentType.substring(0,"image".length()).equals("image")){
			ActionContext.getContext().put("prompt_message", "发布失败，上传的文件不是图片！");
			return ;
		}
		Mood m = new Mood();
		m.setMood_id(mood_id);
		m.setContent(content);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");//小写的mm表示的是分钟  
		//String dstr="2008-4-24";  
		Date date=sdf.parse(time);  
		m.setTime(date);
		if(flag==null){
			flag1 = 0;
		}else{
			flag1=Integer.valueOf(flag);
		}
		m.setFlag(flag1);
		//要更新图片的时候
		if(upload!=null){
			// 以服务器的文件保存地址和原文件名建立上传文件输出流
			String picsrc = ServletActionContext.getServletContext().getRealPath("/webfile/images");//D:\tomcat8\webapps\blog\webfile\images
			FileOutputStream fos = new FileOutputStream(picsrc+
					 "\\" + getUploadFileName());
			FileInputStream fis = new FileInputStream(getUpload());
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = fis.read(buffer)) > 0)
			{
				fos.write(buffer , 0 , len);
			}
			fos.close();
			//这里为什么没有读取struts.xml文件的配置属性savePath
			String path = savePath;
			//使用略缩图
			String picsrc2 = ServletActionContext.getServletContext().getRealPath(File.separator)+"/webfile/images/"+getUploadFileName();//   webfile/images/113801a7cee.jpg
			//获取项目路径D:\tomcat8\webapps\blog
			int length  =uploadFileName.lastIndexOf(".");
			String filename = uploadFileName.subSequence(0,length )+"lue"+uploadFileName.subSequence(length,uploadFileName.length()) ;
			//保存到数据库中的相对路径
			String luepicsrc ="/webfile/images".substring(1,"/webfile/images".length())+"/"+filename;//   webfile/images/113801a7cee.jpg
			//真实的路径
			String luepicSrc = picsrc2.substring(0, picsrc2.length()-uploadFileName.length())+ filename;
			PictureChangeSize.compressImage(picsrc2, luepicSrc, 500);
			m.setPicsrc(luepicsrc);						
		}
		ms.updateById(m);
	}
	public void editmood(){
		ActionContext.getContext().put("mood", ms.getById(mood_id));
	}
}