package com.example.demo.service;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;

public interface SecurityService {
    String findLoggedInUsername();

    void autoLogin(String username, String password);

}
