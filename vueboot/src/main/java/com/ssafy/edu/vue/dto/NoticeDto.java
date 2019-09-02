package com.ssafy.edu.vue.dto;

public class NoticeDto {
	
	private int num;//PK, auto increment
	private String name;
	private String title;
	private String content;
	private String id;
	private String time;
	public NoticeDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticeDto(int num, String name, String title, String content, String id, String time) {
		super();
		this.num = num;
		this.name = name;
		this.title = title;
		this.content = content;
		this.id = id;
		this.time = time;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "NoticeDto [num=" + num + ", name=" + name + ", title=" + title + ", content=" + content + ", id=" + id
				+ ", time=" + time + "]";
	}

}
