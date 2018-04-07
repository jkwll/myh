package top.wull.blog.antity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
@Entity
@Table(name="essaytype")
//知识篇
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class EssayType{
	@Id @Column(name="type_id")
	//主键由数据库自动生成（主要是自动增长型） 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer type_id;
	String name;
	String url;
	String flag;
	public Integer getType_id() {
		return type_id;
	}
	public void setType_id(Integer type_id) {
		this.type_id = type_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	@Override
	public String toString() {
		return "EssayType [type_id=" + type_id + ", name=" + name + ", url=" + url + ", flag=" + flag + "]";
	}
	
}
