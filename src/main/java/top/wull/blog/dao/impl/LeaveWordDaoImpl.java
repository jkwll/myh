package top.wull.blog.dao.impl;

import org.springframework.stereotype.Repository;

import top.wull.blog.antity.LeaveWord;
import top.wull.blog.dao.LeaveWordDao;
import top.wull.common.dao.impl.BaseDaoImpl;

@Repository("leaveWordDao")
public class LeaveWordDaoImpl extends BaseDaoImpl<LeaveWord> implements LeaveWordDao{ 
	
}
