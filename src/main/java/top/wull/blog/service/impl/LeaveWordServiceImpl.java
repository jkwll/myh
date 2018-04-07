package top.wull.blog.service.impl;

import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import top.wull.blog.antity.LeaveWord;
import top.wull.blog.dao.LeaveWordDao;
import top.wull.blog.service.LeaveWordService;
@Service("leaveWordService")
@Transactional(readOnly=false)
public class LeaveWordServiceImpl implements LeaveWordService {
	@Resource(name="leaveWordDao")
	private LeaveWordDao leaveWordDao ;
	public LeaveWordDao getLeaveWordDao() {
		return leaveWordDao;
	}
	public void setLeaveWordDao(LeaveWordDao leaveWordDao) {
		this.leaveWordDao = leaveWordDao;
	}
	public void addLeaveWord(LeaveWord lw){
		System.out.println("zhlei 01"+leaveWordDao);
		//leaveWordDao.fun(lw);
		leaveWordDao.save(lw);
		System.out.println("zhlei 02");

	}

	public List getAllLeaveWord() {
		// TODO Auto-generated method stub
		List<LeaveWord> list = leaveWordDao.getAll(LeaveWord.class);
		Collections.reverse(list); // 倒序排列
		return list;
	}
}
