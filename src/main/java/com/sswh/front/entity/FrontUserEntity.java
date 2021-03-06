package com.sswh.front.entity;

import com.alibaba.fastjson.annotation.JSONField;

import java.io.Serializable;
import java.util.Date;

/**
 * 前台用户实体
 */

public class FrontUserEntity  implements Serializable {

	private int iid;
	private String loginname;    //登录名
	private String username;     //真实姓名
	private String password;     //密码
	private String password_salt;//盐值
	private String sex;     //0:女 1：男
	private String birthday;   //出生年月日
	private String identity; //身份证
	private String email;    //邮箱
	private String mobile;   //手机号码
	private String address;  //地址
	private Integer status;  //用户账户是否可用
	private String code;     //用户唯一标识
	private String year;
	private String month;
	private String day;

	private String city;//所在城市
	private String sign;//全部内容
	private String experience;//积分 即红旗个数
	private String ip;//ip
	private String logins;    //登录次数
	private String province;
	private String district;
	private String school;
	private String grade;



	private String city_picker;
	//加入时间
	@JSONField(format = "yyyy-MM-dd HH:mm:ss")
	private Date joinTime;
	//单位性质
	private SchoolEntity dw_xinzhi;

	// 0、非学生 1、学生
	private int beStudent = 0;
	public FrontUserEntity() {
		super();
	}

	public int getIid() {
		return iid;
	}

	public void setIid(int iid) {
		this.iid = iid;
	}



	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword_salt() {
		return password_salt;
	}

	public void setPassword_salt(String password_salt) {
		this.password_salt = password_salt;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public int getBeStudent() {
		return beStudent;
	}

	public void setBeStudent(int beStudent) {
		this.beStudent = beStudent;
	}

	public String getLoginname() {
		return loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getLogins() {
		return logins;
	}

	public void setLogins(String logins) {
		this.logins = logins;
	}

	public Date getJoinTime() {
		return joinTime;
	}

	public void setJoinTime(Date joinTime) {
		this.joinTime = joinTime;
	}

	public SchoolEntity getDw_xinzhi() {
		return dw_xinzhi;
	}

	public void setDw_xinzhi(SchoolEntity dw_xinzhi) {
		this.dw_xinzhi = dw_xinzhi;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getCity_picker() {
		return city_picker;
	}

	public void setCity_picker(String city_picker) {
		this.city_picker = city_picker;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
}
