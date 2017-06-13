package com.doufuding.model;

/**
 * 标签信息
 * 
 */
public class TagInfo {

	private Integer id; // 标识
	private String name; // 标签名称

	public TagInfo(int id, String name) {
		this.id = id;
		this.name = name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}