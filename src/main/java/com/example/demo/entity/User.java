package com.example.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="user")
public class User {
	
	@Id   // anotation define primary key
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id", nullable=false)
	private long id_user;
	
	@Column(name="name", length=500)
	private String name;
	
	@Column(name="age")
	private int age;
	
	@Column(name="address")
	private String address;
	
	@Column(name="sex")
	private String sex;
	
	@Column(name="username")
	private String username;
	
	@Column(name="password")
	private String password;
	
	@Transient
    private String passwordConfirm;
	
	public String getPasswordConfirm() {
		return passwordConfirm;
	}
	public void setPasswordConfirm(String passwordConfirm) {
		this.passwordConfirm = passwordConfirm;
	}
	// get and set
	public long getId() {
		return id_user;
	}
	public void setId(long id) {
		this.id_user = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	// contractor
	public User(long id, String name, int age, String address, String sex, String username,
			String password) {
		super();
		this.id_user = id;
		this.name = name;
		this.age = age;
		this.address = address;
		this.sex = sex;
		this.username = username;
		this.password = password;
	}
	public User() {
		super();
	}
	

}
