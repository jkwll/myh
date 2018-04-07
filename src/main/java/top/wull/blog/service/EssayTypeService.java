package top.wull.blog.service;

import java.util.List;

import top.wull.blog.antity.EssayType;

public interface EssayTypeService {

	public List getAllEssayType();

	public EssayType getById(Integer parseInt);

	public List<EssayType> getEssayTypeByFlag(Integer i);

	public EssayType getEssayTypeByName(String typename);
}
