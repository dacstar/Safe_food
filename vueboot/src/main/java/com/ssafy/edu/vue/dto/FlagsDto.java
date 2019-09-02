package com.ssafy.edu.vue.dto;

import java.io.Serializable;

public class FlagsDto implements Serializable {
	
	private String name;
	private String shortname;
	private int code;
	private String flag;
	private String korname;
	public FlagsDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FlagsDto(String name, String shortname, int code, String flag, String korname) {
		super();
		this.name = name;
		this.shortname = shortname;
		this.code = code;
		this.flag = flag;
		this.korname = korname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getShortname() {
		return shortname;
	}
	public void setShortname(String shortname) {
		this.shortname = shortname;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getKorname() {
		return korname;
	}
	public void setKorname(String korname) {
		this.korname = korname;
	}
	@Override
	public String toString() {
		return "FlagsDto [name=" + name + ", shortname=" + shortname + ", code=" + code + ", flag=" + flag
				+ ", korname=" + korname + "]";
	}
	
	

}
