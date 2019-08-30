package com.ssafy.edu.dto;

import java.io.Serializable;
import java.util.Arrays;

public class MemberDto implements Serializable{
	
	private String[] allergy;
	
	private String m_idx;
	private String m_id;
	private String m_pwd;
	private String m_name;
	private String m_location;
	private String m_phonenum;
	

	private int wheat;
	private int bean;
	private int sellfish;
	private int milk;
	private int pork;
	private int eggwhite;
	private int peach;
	private int beef;
	private int oyster;
	private int tomato;
	
	//---
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "MemberDto [ " + " m_idx=" + m_idx + ", m_id=" + m_id + ", m_pwd="
				+ m_pwd + ", m_name=" + m_name + ", m_location=" + m_location + ", m_phonenum=" + m_phonenum + "]";
	}
	public MemberDto(String m_id, String m_pwd, String m_name, String m_location,	String m_phonenum) {
		this.m_id = m_id;
		this.m_pwd = m_pwd;
		this.m_name = m_name;
		this.m_location = m_location;
		this.m_phonenum = m_phonenum;
	}
	
	
	
	public String getM_idx() {
		return m_idx;
	}
	public void setM_idx(String m_idx) {
		this.m_idx = m_idx;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pwd() {
		return m_pwd;
	}
	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_location() {
		return m_location;
	}
	public void setM_location(String m_location) {
		this.m_location = m_location;
	}
	public String getM_phonenum() {
		return m_phonenum;
	}
	public void setM_phonenum(String m_phonenum) {
		this.m_phonenum = m_phonenum;
	}



	//-----
	private int buckwheat;
	public int getBuckwheat() {
		return buckwheat;
	}
	public void setBuckwheat(int buckwheat) {
		this.buckwheat = buckwheat;
	}
	public int getWheat() {
		return wheat;
	}
	public void setWheat(int wheat) {
		this.wheat = wheat;
	}
	public int getBean() {
		return bean;
	}
	public void setBean(int bean) {
		this.bean = bean;
	}
	public int getSellfish() {
		return sellfish;
	}
	public void setSellfish(int sellfish) {
		this.sellfish = sellfish;
	}
	public int getMilk() {
		return milk;
	}
	public void setMilk(int milk) {
		this.milk = milk;
	}
	public int getPork() {
		return pork;
	}
	public void setPork(int pork) {
		this.pork = pork;
	}
	public int getEggwhite() {
		return eggwhite;
	}
	public void setEggwhite(int eggwhite) {
		this.eggwhite = eggwhite;
	}
	public int getPeach() {
		return peach;
	}
	public void setPeach(int peach) {
		this.peach = peach;
	}
	public int getBeef() {
		return beef;
	}
	public void setBeef(int beef) {
		this.beef = beef;
	}
	public int getOyster() {
		return oyster;
	}
	public void setOyster(int oyster) {
		this.oyster = oyster;
	}
	public int getTomato() {
		return tomato;
	}
	public void setTomato(int tomato) {
		this.tomato = tomato;
	}
	
	public String[] getAllergy() {
		return allergy;
	}
	public void setAllergy(String[] allergy) {
		this.allergy = allergy;
	}
	
	
	
	
	
	
	
	

}
