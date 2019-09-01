package com.way.free.model;

import java.sql.Date;

//VO(Value Object)
public class board {
	private Integer num;
	private Integer canum;
	private String type;
	private String title;
	private String nick;
	private String password;
	private Date date;
	private String content;
	private Integer inqu;
	private Integer reco;
	private String appro;
	private Integer concept;
	private Integer nonreco;
	private Integer hitnum;
	private Integer repnum;
	
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getInqu() {
		return inqu;
	}
	public void setInqu(Integer inqu) {
		this.inqu = inqu;
	}
	public Integer getReco() {
		return reco;
	}
	public void setReco(Integer reco) {
		this.reco = reco;
	}
	public String getAppro() {
		return appro;
	}
	public void setAppro(String appro) {
		this.appro = appro;
	}
	public Integer getConcept() {
		return concept;
	}
	public void setConcept(Integer concept) {
		this.concept = concept;
	}
	public Integer getNonreco() {
		return nonreco;
	}
	public void setNonreco(Integer nonreco) {
		this.nonreco = nonreco;
	}
	public Integer getHitnum() {
		return hitnum;
	}
	public void setHitnum(Integer hitnum) {
		this.hitnum = hitnum;
	}
	public Integer getRepnum() {
		return repnum;
	}
	public void setRepnum(Integer repnum) {
		this.repnum = repnum;
	}
	
	@Override
	public String toString() {
		return "board [num=" + num + ", canum=" + canum + ", type=" + type + ", title=" + title + ", nick=" + nick
				+ ", password=" + password + ", date=" + date + ", content=" + content + ", inqu=" + inqu + ", reco="
				+ reco + ", appro=" + appro + ", concept=" + concept + ", nonreco=" + nonreco + ", hitnum=" + hitnum
				+ ", repnum=" + repnum + "]";
	}
	
	
	
	
}
