package com.inspur.ssm.util;

import org.apache.commons.lang3.StringUtils;

/**
 * 分页状态类
 * @author liuzd
 * @version 1.0 2011-05-12
 * @since JDK1.5
 * */
public enum PageState {
	
	/**
	 * 设置每页显示多少条
	 * */
	SETPAGE,
	/**
	 * 首页
	 * */
	FIRST, 
	/**
	 * 向前一页
	 * */
	PREVIOUS, 
	/**
	 * 向后一页
	 * */
	NEXT, 
	/**
	 * 末页
	 * */
	LAST, 
	/**
	 * 排序
	 * */
	SORT,
	/**
	 * 到第多少页
	 * */
	GOPAGE;

	
	/**
	 * @param value 索引名称
	 * @return 返回索引下标
	 */
	public static int getOrdinal(String value) {
		int index = -1;
		if (StringUtils.isEmpty(value)) {
			return index;
		}
		String newValue = StringUtils.trim(value).toUpperCase();
		try {
			index = valueOf(newValue).ordinal();
		} catch (IllegalArgumentException e) {}
		return index;
	}
}