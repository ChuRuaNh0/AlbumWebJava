package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Album;
import com.example.demo.entity.User;
import com.example.demo.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public List<User> checkUser(String username, String password, User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> updateUser(User user, Long id) {
		// TODO Auto-generated method stub
		User user0id = userRepository.getOne(id);
		if (user0id != null) {
			user0id.setId(user.getId());
			user0id.setName(user.getName());
			user0id.setAddress(user.getAddress());
			user0id.setAge(user.getAge());
			user0id.setSex(user.getSex());
		} else {
			return null;
		}

		return (List<User>) userRepository.save(user0id);  //save đối tượng cũ là lưu được rồi	
		}

	@Override
	public List<User> recreateUser(User user, Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findAlUsers() {
		// TODO Auto-generated method stub
		return userRepository.findAll();
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return userRepository.findByUsername(username);
	}
	
	

	@Override
	public void save(User user) {
	        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
//	        user.setRoles(new HashSet<>(roleRepository.findAll()));
	        userRepository.save(user);
	 }

		

}
