package top.kuvip.wll.blog.antity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	@Id @Column(name="user_id")
	//主键由数据库自动生成（主要是自动增长型） 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long user_id;
	private String userName;
	private String passWord;
	public Long getUser_id() {
		return user_id;
	}
	public void setUser_id(Long user_id) {
		this.user_id = user_id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", userName=" + userName + ", passWord=" + passWord + "]";
	}
	
}
