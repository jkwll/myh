package top.kuvip.wll.blog.service;

import java.util.List;

import top.kuvip.wll.blog.antity.EssayType;

public interface EssayTypeService {

	public List getAllEssayType();

	public EssayType getById(Integer parseInt);

	public List<EssayType> getEssayTypeByFlag(Integer i);

	public EssayType getEssayTypeByName(String typename);
}
