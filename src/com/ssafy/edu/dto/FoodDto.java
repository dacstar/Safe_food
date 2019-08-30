package com.ssafy.edu.dto;

import java.io.Serializable;
import java.util.Map;

import jdk.nashorn.internal.parser.JSONParser;

public class FoodDto implements Serializable{
	
	private int rnum;
	private String prdlstReportNo;
	private String productGb;
	private String prdlstNm;
	private String rawmtrl;
	private String allergy;
	private Map<String,String> nutrient;
	
	private String kcal;
	private String fat;
	private String carbo;
	private String protein;
	private String tarnsfat;
	private String sugar;
	
	
	private String barcode;
	private String prdkind;
	private String prdkindstate;
	private String manufacture;
	private String seller;
	private String capacity;
	private String imgurl1;
	private String imgurl2;
	
	
	


	public FoodDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FoodDto(int rnum, String productGb, String prdlstNm, String allergy, Map<String, String> nutrient,
			String prdkind, String imgurl1, String imgurl2) {
		super();
		this.rnum = rnum;
		this.productGb = productGb;
		this.prdlstNm = prdlstNm;
		this.allergy = allergy;
		this.nutrient = nutrient;
		this.prdkind = prdkind;
		this.imgurl1 = imgurl1;
		this.imgurl2 = imgurl2;
	}
	
	
	
	
	public FoodDto(int rnum, String productGb, String prdlstNm, String allergy, String kcal, String fat, String carbo,
			String protein, String tarnsfat, String sugar, String prdkind, String imgurl1, String imgurl2) {
		super();
		this.rnum = rnum;
		this.productGb = productGb;
		this.prdlstNm = prdlstNm;
		this.allergy = allergy;
		this.kcal = kcal;
		this.fat = fat;
		this.carbo = carbo;
		this.protein = protein;
		this.tarnsfat = tarnsfat;
		this.sugar = sugar;
		this.prdkind = prdkind;
		this.imgurl1 = imgurl1;
		this.imgurl2 = imgurl2;
	}

	public FoodDto(int rnum, String prdlstReportNo, String productGb, String prdlstNm, String rawmtrl, String allergy,
			Map<String, String> nutrient, String barcode, String prdkind, String prdkindstate, String manufacture,
			String seller, String capacity, String imgurl1, String imgurl2) {
		super();
		this.rnum = rnum;
		this.prdlstReportNo = prdlstReportNo;
		this.productGb = productGb;
		this.prdlstNm = prdlstNm;
		this.rawmtrl = rawmtrl;
		this.allergy = allergy;
		this.nutrient = nutrient;
		this.barcode = barcode;
		this.prdkind = prdkind;
		this.prdkindstate = prdkindstate;
		this.manufacture = manufacture;
		this.seller = seller;
		this.capacity = capacity;
		this.imgurl1 = imgurl1;
		this.imgurl2 = imgurl2;
	}

	

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getPrdlstReportNo() {
		return prdlstReportNo;
	}

	public void setPrdlstReportNo(String prdlstReportNo) {
		this.prdlstReportNo = prdlstReportNo;
	}

	public String getProductGb() {
		return productGb;
	}

	public void setProductGb(String productGb) {
		this.productGb = productGb;
	}

	public String getPrdlstNm() {
		return prdlstNm;
	}

	public void setPrdlstNm(String prdlstNm) {
		this.prdlstNm = prdlstNm;
	}

	public String getRawmtrl() {
		return rawmtrl;
	}

	public void setRawmtrl(String rawmtrl) {
		this.rawmtrl = rawmtrl;
	}

	public String getAllergy() {
		return allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}

	

	public Map<String, String> getNutrient() {
		return nutrient;
	}

	public void setNutrient(Map<String, String> nutrient) {
		this.nutrient = nutrient;
	}

	public String getBarcode() {
		return barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	public String getPrdkind() {
		return prdkind;
	}

	public void setPrdkind(String prdkind) {
		this.prdkind = prdkind;
	}

	public String getPrdkindstate() {
		return prdkindstate;
	}

	public void setPrdkindstate(String prdkindstate) {
		this.prdkindstate = prdkindstate;
	}

	public String getManufacture() {
		return manufacture;
	}

	public void setManufacture(String manufacture) {
		this.manufacture = manufacture;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	public String getCapacity() {
		return capacity;
	}

	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}

	public String getImgurl1() {
		return imgurl1;
	}

	public void setImgurl1(String imgurl1) {
		this.imgurl1 = imgurl1;
	}

	public String getImgurl2() {
		return imgurl2;
	}

	public void setImgurl2(String imgurl2) {
		this.imgurl2 = imgurl2;
	}

	@Override
	public String toString() {
		return "FoodDto [rnum=" + rnum + ", prdlstReportNo=" + prdlstReportNo + ", productGb=" + productGb
				+ ", prdlstNm=" + prdlstNm + ", rawmtrl=" + rawmtrl + ", allergy=" + allergy + ", nutrient=" + nutrient
				+ ", barcode=" + barcode + ", prdkind=" + prdkind + ", prdkindstate=" + prdkindstate + ", manufacture="
				+ manufacture + ", seller=" + seller + ", capacity=" + capacity + ", imgurl1=" + imgurl1 + ", imgurl2="
				+ imgurl2 + "]";
	}

	public String getKcal() {
		return kcal;
	}

	public void setKcal(String kcal) {
		this.kcal = kcal;
	}

	public String getFat() {
		return fat;
	}

	public void setFat(String fat) {
		this.fat = fat;
	}

	public String getCarbo() {
		return carbo;
	}

	public void setCarbo(String carbo) {
		this.carbo = carbo;
	}

	public String getProtein() {
		return protein;
	}

	public void setProtein(String protein) {
		this.protein = protein;
	}

	public String getTarnsfat() {
		return tarnsfat;
	}

	public void setTarnsfat(String tarnsfat) {
		this.tarnsfat = tarnsfat;
	}

	public String getSugar() {
		return sugar;
	}

	public void setSugar(String sugar) {
		this.sugar = sugar;
	}
	
	
	
	
	
	/*
	 * "rnum": "1",
		"prdlstReportNo": "201705484642",
		"productGb": "식품",
		"prdlstNm": "국산콩두부두모",
		"rawmtrl": "대두100%(국산),천연원료식물성유산균천일염응고제(조제해수염화마그네슘,현미유,식물성유산균발효액ENT)",
		"allergy": "알수없음",
		"nutrient": "100g당/총내용량300g열량80kcal,나트륨0%0mg,탄수화물0%1g,당류0%0g,지방7%3.8g,트랜스지방0g,포화지방4%0.6g,콜레스테롤0%0mg,단백질22%12g1일영양성분기준치에대한비율(%)은2,000kcal기준이므로개인의필요열량에따라다를수있습니다.",
		"barcode": "8801024949960",
		"prdkind": "두부",
		"prdkindstate": "알수없음",
		"manufacture": "대상㈜구미공장_경상북도 구미시 산동면 첨단기업5로 48-38",
		"seller": "대상㈜횡성공장_강원도 횡성군 횡성읍 청용길 15",
		"capacity": "300g",
		"imgurl1": "http://fresh.ihaccp.or.kr/prdimg/2017/201705484642/201705484642-1.jpg",
		"imgurl2": "http://fresh.ihaccp.or.kr/prdimg/2017/201705484642/201705484642-2.jpg"
	 * 
	 */

}
