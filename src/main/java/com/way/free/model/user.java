package com.way.free.model;

public class user {
	private String id;
	private String role;
	private String nick;
	private Boolean fixnic;
	private String password;
	private String passwordcheck;
	private String newpassword;
	private String name;
	private String mail;
	private String stie;
	private Integer coin;
	private String mail01;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public Boolean getFixnic() {
		return fixnic;
	}
	public String getMail01() {
		return mail01;
	}
	public void setMail01(String mail01) {
		this.mail01 = mail01;
	}
	public void setFixnic(Boolean fixnic) {
		this.fixnic = fixnic;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPasswordcheck() {
		return passwordcheck;
	}
	public void setPasswordcheck(String passwordcheck) {
		this.passwordcheck = passwordcheck;
	}
	
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getStie() {
		return stie;
	}
	public void setStie(String stie) {
		this.stie = stie;
	}
	public Integer getCoin() {
		return coin;
	}
	public void setCoin(Integer coin) {
		this.coin = coin;
	}
	@Override
	public String toString() {
		return "user [id=" + id + ", role=" + role + ", nick=" + nick + ", fixnic=" + fixnic + ", password=" + password
				+ ", name=" + name + ", mail=" + mail + ", stie=" + stie + ", coin=" + coin + "]";
	}

}
