package com.umang.springmvc.model;

public enum PurchaseType {

	A("Amount"), U("Unit");

	String type;

	private PurchaseType(String type) {
		this.type = type;
	}

	public String type() {
		return this.type;
	}
}
