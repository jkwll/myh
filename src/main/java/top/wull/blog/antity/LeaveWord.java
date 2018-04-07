package top.wull.blog.antity;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
@Entity
@Table(name="leaveword")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class LeaveWord {
	@Id @Column(name="lw_id")
	//主键由数据库自动生成（主要是自动增长型） 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer lw_id;
	String userName;
	Date time;
	String picsrc;
	String content;
	String address;
	Integer flag;
	Integer ding;
	Integer cai;
	
	@Override
	public String toString() {
		return "leaveword [lw_id=" + lw_id + ", username=" + userName + ", time=" + time + ", picsrc=" + picsrc
				+ ", content=" + content + ", address=" + address + ", flag=" + flag + ", ding=" + ding + ", cai=" + cai
				+ "]";
	}
	public LeaveWord(){
		System.out.println("创建了leaveword对 象...............");
	}
	public LeaveWord(Integer lw_id, String username, Date time, String picsrc, String content, String address, Integer flag,
			Integer ding, Integer cai) {
		super();
		this.lw_id = lw_id;
		this.userName = username;
		this.time = time;
		this.picsrc = picsrc;
		this.content = content;
		this.address = address;
		this.flag = flag;
		this.ding = ding;
		this.cai = cai;
	}
	public Integer getLw_id() {
		return lw_id;
	}
	public void setLw_id(Integer lw_id) {
		this.lw_id = lw_id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String username) {
		this.userName = username;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getPicsrc() {
		return picsrc;
	}
	public void setPicsrc(String picsrc) {
		this.picsrc = picsrc;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getFlag() {
		return flag;
	}
	public void setFlag(Integer flag) {
		this.flag = flag;
	}
	public Integer getDing() {
		return ding;
	}
	public void setDing(Integer ding) {
		this.ding = ding;
	}
	public Integer getCai() {
		return cai;
	}
	public void setCai(Integer cai) {
		this.cai = cai;
	}
	
}
