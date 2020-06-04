package com.cjh.vo;

public class BasketVO {
	private int basket_id;
	private String userid;
	private int product_num;
	private String product_name;
	private int product_count;
	private int price;
	private String picture_url;
	
	public BasketVO() {
		
	}
	
	public BasketVO(String userid , int product_num, int product_count, int price) {
		this.userid = userid;
		this.product_num = product_num;
		this.product_count = product_count;
		this.price = price;
	}
	
	public BasketVO(String userid , int product_num , String product_name , 
			int product_count , int price, String picture_url) {
		this.userid = userid;
		this.product_num = product_num;
		this.product_name = product_name;
		this.product_count = product_count;
		this.price = price;
		this.picture_url = picture_url;
	}
	
	
	
	public int getBasket_id() {
		return basket_id;
	}

	public void setBasket_id(int basket_id) {
		this.basket_id = basket_id;
	}

	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_count() {
		return product_count;
	}
	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPicture_url() {
		return picture_url;
	}

	public void setPicture_url(String picture_url) {
		this.picture_url = picture_url;
	}

	@Override
	public String toString() {
		return "BasketVO [basket_id=" + basket_id + ", userid=" + userid + ", product_num=" + product_num
				+ ", product_name=" + product_name + ", product_count=" + product_count + ", price=" + price
				+ ", picture_url=" + picture_url + "]";
	}


	
	
}
