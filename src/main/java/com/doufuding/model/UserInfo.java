package com.doufuding.model;

import java.util.Date;

/**
 * 用户信息
 *
 */
public class UserInfo {

	private Integer id; // 用户标识
	private String loginName; // 用户登录名
	private String password; // 用户密码
	private Date createTime; // 创建时间

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

}