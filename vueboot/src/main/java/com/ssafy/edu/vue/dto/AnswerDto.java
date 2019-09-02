package com.ssafy.edu.vue.dto;

public class AnswerDto {
	
	private int num;
	private String writer;
	private String content;
	private String time;
	public AnswerDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AnswerDto(int num, String writer, String content, String time) {
		super();
		this.num = num;
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
		return "AnswerDto [num=" + num + ", writer=" + writer + ", content=" + content + ", time=" + time + "]";
	}
	
	
}