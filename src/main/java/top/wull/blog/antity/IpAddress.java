package top.wull.blog.antity;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ipAddress")

public class IpAddress {
	@Id @Column(name="ip_address_id")
	//主键由数据库自动生成（主要是自动增长型） 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer ip_address_id;
	Date time;

	//0表示成功
	String code;
	String ip;
	String country;
	String area;
	String region;
	String city;
	String county;
	String isp;
	String url;
	
	public IpAddress(Integer ip_address_id, String code, String ip, String country, String area, String region,
			String city, String county, String isp, String url) {
		super();
		this.ip_address_id = ip_address_id;
		this.code = code;
		this.ip = ip;
		this.country = country;
		this.area = area;
		this.region = region;
		this.city = city;
		this.county = county;
		this.isp = isp;
		this.url = url;
	}
	
	public String getTime() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		return format.format(this.time);
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Integer getIp_address_id() {
		return ip_address_id;
	}
	public void setIp_address_id(Integer ip_address_id) {
		this.ip_address_id = ip_address_id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCounty() {
		return county;
	}
	public void setCounty(String county) {
		this.county = county;
	}
	public String getIsp() {
		return isp;
	}
	public void setIsp(String isp) {
		this.isp = isp;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
}
