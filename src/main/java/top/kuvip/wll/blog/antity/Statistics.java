package top.kuvip.wll.blog.antity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="statistics")
//知识篇
public class Statistics implements Comparable<Statistics>{
	@Id @Column(name="url")
	String url;
	Integer ding;
	Integer cai;
	Integer count;
	
	
	
	public String getUrl() {
		return url;
	}



	public void setUrl(String url) {
		this.url = url;
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



	public Integer getCount() {
		return count;
	}



	public void setCount(Integer count) {
		this.count = count;
	}



	@Override
	public String toString() {
		return "Statistics [url=" + url + ", ding=" + ding + ", cai=" + cai + ", count=" + count + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}



	public int compareTo(Statistics o) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
