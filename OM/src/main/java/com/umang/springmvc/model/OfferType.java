package com.umang.springmvc.model;

public enum OfferType {
	POF("Price Off"), FU("Free Units");

	String type;

	private OfferType(String type) {
		this.type = type;
	}

	public String type() {
		return type;
	}
}
