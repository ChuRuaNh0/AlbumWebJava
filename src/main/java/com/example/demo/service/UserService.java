package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.User;

public interface UserService {
	
	// 0. Get all user
	List<User> findAlUsers();
	
	// 1.Add new user (register)
	void save(User user);
	
	// 2.Check user
	List<User> checkUser(String username, String password, User user);
	
	// 3.Update infor user
	List<User> updateUser(User user, Long id);
	
	// 4. Forgot password
	List<User> recreateUser(User user, Long id);
	
	//5. find by name
	User findByUsername(String username);
}
