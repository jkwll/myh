package top.kuvip.wll.blog.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import top.kuvip.wll.blog.antity.EssayType;
import top.kuvip.wll.blog.dao.EssayTypeDao;
import top.kuvip.wll.blog.service.EssayTypeService;
@Service("essayTypeService")
@Transactional(readOnly=false)
public class EssayTypeServiceImpl implements EssayTypeService{
	@Resource(name="essayTypeDao")
	private EssayTypeDao etd ;

	public List getAllEssayType() {
		return etd.getAll(EssayType.class);
	}

	public EssayType getById(Integer parseInt) {
		// TODO Auto-generated method stub
		return etd.getById(parseInt);
	}


	public List<EssayType> getEssayTypeByFlag(Integer i) {
		return etd.getEssayTypeByFlag(i);
	}

	public EssayType getEssayTypeByName(String typename) {
		return etd.getEssayTypeByName(typename);
	}


}
