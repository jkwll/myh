package top.wull.blog.dao;

import java.util.List;

import top.wull.blog.antity.EssayType;
import top.wull.common.dao.BaseDao;

public interface EssayTypeDao extends BaseDao<EssayType>{

	List getByFalg(int i);

	List<EssayType> getEssayTypeByFlag(Integer i);

	EssayType getEssayTypeByName(String typename);



}
