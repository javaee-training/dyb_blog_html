package com.doufuding.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 博客信息
 *
 */
public class BlogInfo {

	private Integer id; // 标识
	private String title; // 标题
	private List<TagInfo> tags;
	private String content; // 文章
	private Integer createUserId; // 创建用户标识
	private Date createTime; // 创建时间
	private Date updateTime; // 最近更新时间
	private UserInfo createUserInfo; // 创建用户信息

	public BlogInfo(){

	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public List<TagInfo> getTags() {
		return tags;
	}

	public void setTags(List<TagInfo> tags) {
		this.tags = tags;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getCreateUserId() {
		return createUserId;
	}

	public void setCreateUserId(Integer createUserId) {
		this.createUserId = createUserId;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public UserInfo getCreateUserInfo() {
		return createUserInfo;
	}

	public void setCreateUserInfo(UserInfo createUserInfo) {
		this.createUserInfo = createUserInfo;
	}
	

}
