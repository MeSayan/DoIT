package com.sayan.login;

import org.springframework.stereotype.Service;

// Mark this class as a Service, so that it can be
// used by controllers

@Service
public class LoginService {

    public boolean authenticate(String name, String password) {
        return name.equals("sayan") && password.equals("pass");
    }
}
