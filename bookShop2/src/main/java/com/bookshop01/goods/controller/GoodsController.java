package com.bookshop01.goods.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

public interface GoodsController  {
	public ModelAndView goodsDetail(@RequestParam("goods_id") String goods_id,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public @ResponseBody String keywordSearch(@RequestParam("keyword") String keyword,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView searchGoods(@RequestParam("searchWord") String searchWord,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView sort(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView sort1(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView sort2(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView sort3(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
