package com.ssafy.edu.vue.dto;

public class QuestionDto {
	
	private int num;
	private String title;
	private String writer;
	private String content;
	private String time;
	public QuestionDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QuestionDto(int num, String title, String writer, String content, String time) {
		super();
		this.num = num;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.time = time;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "QuestionDto [num=" + num + ", title=" + title + ", writer=" + writer + ", content=" + content
				+ ", time=" + time + "]";
	}
	
	
}
