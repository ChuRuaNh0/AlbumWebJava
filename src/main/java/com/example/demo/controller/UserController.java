package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.entity.User;
import com.example.demo.service.SecurityService;
import com.example.demo.service.UserService;
import com.example.demo.validator.UserValidator;

@Controller
public class UserController {
	 	@Autowired
	    private UserService userService;
	    @Autowired
	    private SecurityService securityService;
	    @Autowired
	    private UserValidator userValidator;
	    @Autowired
	    public static String uploadDirectory = System.getProperty("user.dir") + "/user-photos";
	
	    @GetMapping("/registration")
	    public String registration(Model model) {
	        model.addAttribute("userForm", new User());
	        return "register";
	    }
	    
	    @PostMapping("/registration")
	    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
	        userValidator.validate(userForm, bindingResult);

	        if (bindingResult.hasErrors()) {
	            return "/registration";
	        }
	        userService.save(userForm);
	        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());
	        return "/login";
	    }

	    @GetMapping("/login")
	    public String login(Model model, String error, String logout) {
	        if (error != null)
	            model.addAttribute("error", "Your username and password is invalid.");

	        if (logout != null)
	            model.addAttribute("message", "You have been logged out successfully.");

	        return "login";
	    }
	    
	    @GetMapping({"/admin"})
	    public String admin(Model model) {
	        return "admin";
	    }
	 

}
