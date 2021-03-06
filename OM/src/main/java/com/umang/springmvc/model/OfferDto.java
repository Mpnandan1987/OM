package com.umang.springmvc.model;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlRootElement;

/**
 * 
 * @author deepak
 * @since 19 January 2020
 * @version 1.0
 *
 */
@JsonInclude(Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
@JacksonXmlRootElement(localName = "offer_dto")
@JsonPropertyOrder
public class OfferDto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1844484875816114074L;

	@JsonProperty("id")
	private Integer id;

	@JsonProperty("article")
	@NotNull
	private String article;

	@JsonProperty("purchase_type")
	@NotNull
	private PurchaseType type;

	@JsonProperty("on_purchase_off")
	@NotNull
	private Integer purchase;

	@JsonProperty("duration_from")
	@NotNull
	private Date durationFrom;

	@JsonProperty("duration_to")
	@NotNull
	private Date durationTo;

	@JsonProperty("duration")
	private String duration;

	@JsonProperty("image_uri")
	private String imageUri;

	@JsonProperty("active")
	private boolean active;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getArticle() {
		return article;
	}

	public void setArticle(String article) {
		this.article = article;
	}

	public PurchaseType getType() {
		return type;
	}

	public void setType(PurchaseType type) {
		this.type = type;
	}

	public Integer getPurchase() {
		return purchase;
	}

	public void setPurchase(Integer purchase) {
		this.purchase = purchase;
	}

	public Date getDurationFrom() {
		return durationFrom;
	}

	public void setDurationFrom(Date durationFrom) {
		this.durationFrom = durationFrom;
	}

	public String getImageUri() {
		return imageUri;
	}

	public void setImageUri(String imageUri) {
		this.imageUri = imageUri;
	}

	public Date getDurationTo() {
		return durationTo;
	}

	public void setDurationTo(Date durationTo) {
		this.durationTo = durationTo;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

}
