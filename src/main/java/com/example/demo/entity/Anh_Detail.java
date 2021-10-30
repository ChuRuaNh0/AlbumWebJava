package com.example.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="anh")
public class Anh_Detail {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private long id_anh;
	
	private int id_album;
	
	public long getId() {
		return id_anh;
	}

	public void setId(long id_anh) {
		this.id_anh = id_anh;
	}

	public Anh_Detail() {
		super();
	}

	public Anh_Detail(long id_anh, String anh) {
		super();
		this.id_anh = id_anh;
		this.anh = anh;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public int getId_album() {
		return id_album;
	}

	public void setId_album(int id_album) {
		this.id_album = id_album;
	}

	private String anh;
}
