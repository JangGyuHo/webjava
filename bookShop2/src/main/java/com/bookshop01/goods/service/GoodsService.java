package com.bookshop01.goods.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.bookshop01.goods.vo.GoodsVO;

public interface GoodsService {
	
	public Map<String,List<GoodsVO>> listGoods() throws Exception;
	public Map goodsDetail(String _goods_id) throws Exception;
	
	public List<String> keywordSearch(String keyword) throws Exception;
	public List<GoodsVO> searchGoods(String searchWord) throws Exception;
	public Map<String, List<GoodsVO>> goodsList(String goods_sort)throws Exception;
	public Map<String, List<GoodsVO>> goodsList1(String goods_sort) throws Exception;
	public Map<String, List<GoodsVO>> goodsList2(String goods_sort) throws Exception;
	public Map<String, List<GoodsVO>> goodsList3(String goods_sort) throws Exception;
}
