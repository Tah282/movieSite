package com.myspring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.myspring.vo.Item;

@Mapper
public interface ItemMapper {

	public List<Item> getItemList();
	public void insertItem(Item item);
	
}
