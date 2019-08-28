package com.way.free.model;

public class reply {
	private Integer repnum;
	private Integer num;
	private Integer canum;
	private String id;
	private String repcon;
	public Integer getRepnum() {
		return repnum;
	}
	public void setRepnum(Integer repnum) {
		this.repnum = repnum;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Integer getCanum() {
		return canum;
	}
	public void setCanum(Integer canum) {
		this.canum = canum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRepcon() {
		return repcon;
	}
	public void setRepcon(String repcon) {
		this.repcon = repcon;
	}
	@Override
	public String toString() {
		return "reply [repnum=" + repnum + ", num=" + num + ", canum=" + canum + ", id=" + id + ", repcon=" + repcon
				+ "]";
	}
	

}
