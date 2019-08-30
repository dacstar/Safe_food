package com.ssafy.edu.dto;

import java.io.Serializable;

public class MemberDto2 implements Serializable{
	
	private String id;
	private String password;
	private String name;
	private String location;
	private String phonenum;
	private String[] allergy;
	
	//---
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
	

	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phoneNum) {
		this.phonenum = phoneNum;
	}
	public String[] getAllergy() {
		return allergy;
	}
	public void setAllergy(String[] allergy) {
		this.allergy = allergy;
	}
	public MemberDto2(String id, String password, String name, String location, String phoneNum, String[] allergy) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.location = location;
		this.phonenum = phoneNum;
		this.allergy = allergy;
		this.setBean(0);
		this.setBeef(0);
		this.setBuckwheat(0);
		this.setEggwhite(0);
		this.setMilk(0);
		this.setOyster(0);
		this.setPeach(0);
		this.setPork(0);
		this.setSellfish(0);
		this.setTomato(0);
		this.setWheat(0);
	}
	public MemberDto2() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	

}
