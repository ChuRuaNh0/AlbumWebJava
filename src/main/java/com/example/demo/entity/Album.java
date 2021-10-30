package com.example.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="abulm")
public class Album {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private int id_album;
	
	private String name_abulm;
	
	private int nam;
	
	private String infor;
	
	private long id_user;
	
	private String anh;

	public int getId() {
		return id_album;
	}

	public void setId(int id) {
		this.id_album = id;
	}

	public String getName_abulm() {
		return name_abulm;
	}

	public void setName_abulm(String name_abulm) {
		this.name_abulm = name_abulm;
	}

	public int getNam() {
		return nam;
	}

	public void setSotrang(int nam) {
		this.nam = nam;
	}
	public String getInfor() {
		return infor;
	}

	public void setInfor(String infor) {
		this.infor = infor;
	}

	public Album(int id, String name_abulm, int nam, String infor, long id_user, String anh) {
		super();
		this.id_album = id;
		this.name_abulm = name_abulm;
		this.nam = nam;
		this.infor = infor;
		this.id_user = id_user;
		this.anh = anh;
	}

	public Album() {
		super();
	}

	public long getId_user() {
		return id_user;
	}

	public void setId_user(long id_user) {
		this.id_user = id_user;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(final String anh) {
		this.anh = anh;
	}
	
}
