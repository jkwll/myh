package top.kuvip.wll.blog.dao;

import java.util.List;

import top.kuvip.wll.blog.antity.EssayType;
import top.kuvip.wll.common.dao.BaseDao;

public interface EssayTypeDao extends BaseDao<EssayType>{

	List getByFalg(int i);

	List<EssayType> getEssayTypeByFlag(Integer i);

	EssayType getEssayTypeByName(String typename);



}
