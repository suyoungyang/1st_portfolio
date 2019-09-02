package com.way.free.model;


public class menu {
	private Integer canum;
	private String majorca;
	private String mediumca;
	private String minorca;
	private String man;
	private String subman;
	private String cadate;
	public Integer getCanum() {
		return canum;
	}
	public void setCanum(Integer canum) {
		this.canum = canum;
	}
	public String getMajorca() {
		return majorca;
	}
	public void setMajorca(String majorca) {
		this.majorca = majorca;
	}
	public String getMan() {
		return man;
	}
	public void setMan(String man) {
		this.man = man;
	}
	public String getMediumca() {
		return mediumca;
	}
	public void setMediumca(String mediumca) {
		this.mediumca = mediumca;
	}
	public String getMinorca() {
		return minorca;
	}
	public void setMinorca(String minorca) {
		this.minorca = minorca;
	}
	public String getSubman() {
		return subman;
	}
	public void setSubman(String subman) {
		this.subman = subman;
	}
	public String getCadate() {
		return cadate;
	}
	public void setCadate(String cadate) {
		this.cadate = cadate;
	}
	@Override
	public String toString() {
		return "menu [canum=" + canum + ", majorca=" + majorca + ", mediumca=" + mediumca + ", minorca=" + minorca
				+ ", man=" + man + ", subman=" + subman + ", cadate=" + cadate + "]";
	}

}
