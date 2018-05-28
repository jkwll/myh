package top.wull.blog.service.impl;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import top.wull.blog.dao.IpDao;
import top.wull.blog.dao.MusicDao;
import top.wull.blog.service.IpAddressService;
import top.wull.blog.service.MusicService;
@Service("ipAddressService")
@Transactional(readOnly=false)
public class IpAddressServiceImpl implements IpAddressService{
	@Resource(name="ipDao")
	private IpDao ipdao ;

	public void insertLog(String address, StringBuffer url) {
		// TODO Auto-generated method stub
		ipdao.insertLog(address, url);	
	}
}
