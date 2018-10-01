package com.ra.pojo;

public class Address {
	private String addressID;
	private String addressName;
	private String addressPhone;
	private String addressIntro;
	private String addressImg;
	public String getAddressID() {
		return addressID;
	}
	public void setAddressID(String addressID) {
		this.addressID = addressID;
	}
	public String getAddressName() {
		return addressName;
	}
	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}
	public String getAddressPhone() {
		return addressPhone;
	}
	public void setAddressPhone(String addressPhone) {
		this.addressPhone = addressPhone;
	}
	public String getAddressIntro() {
		return addressIntro;
	}
	public void setAddressIntro(String addressIntro) {
		this.addressIntro = addressIntro;
	}
	public String getAddressImg() {
		return addressImg;
	}
	public void setAddressImg(String addressImg) {
		this.addressImg = addressImg;
	}
	@Override
	public String toString() {
		return "Address [addressID=" + addressID + ", addressName=" + addressName + ", addressPhone=" + addressPhone
				+ ", addressIntro=" + addressIntro + ", addressImg=" + addressImg + "]";
	}
	public Address(String addressID, String addressName, String addressPhone, String addressIntro, String addressImg) {
		super();
		this.addressID = addressID;
		this.addressName = addressName;
		this.addressPhone = addressPhone;
		this.addressIntro = addressIntro;
		this.addressImg = addressImg;
	}
	public Address() {
		super();
	}
}
