package com.ssafy.edu.vue.dto;

public class QnADto {
	private int qnum;//PK, auto increment
	private String id;
	private String question;
	private String answer;
	private boolean isanswered;
	public QnADto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QnADto(String id, String question, String answer) {
		super();
		this.id = id;
		this.question = question;
		this.answer = answer;
		this.isanswered = false;
	}
	
	public boolean isIsanswered() {
		return isanswered;
	}
	public void setIsanswered(boolean isanswered) {
		this.isanswered = isanswered;
	}
	@Override
	public String toString() {
		return "QnADto [qnum=" + qnum + ", id=" + id + ", question=" + question + ", answer=" + answer + "]";
	}
	
	public int getqNum() {
		return qnum;
	}
	public void setqNum(int qnum) {
		this.qnum = qnum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
