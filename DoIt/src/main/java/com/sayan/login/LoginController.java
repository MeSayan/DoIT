package com.sayan.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

// Mark this class as a Controller so that Spring Framework
// can detect it

@Controller
@SessionAttributes("name")
public class LoginController {

    // Autowired connections are automatically
    // provided by the framework, we don't need to instantiate them
    @Autowired
    LoginService loginService;

    // For the url pattern /login , call this method it it is a GET request
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLoginPage() {
        return "login";
    }

    // For the url pattern /login , call this method it it is a POST request
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String handleUserLogin(@RequestParam String name,
            @RequestParam String pass, ModelMap map) {

        if (!loginService.authenticate(name, pass)) {
            map.put("errorMessage", "Invalid Credentials");
            return "login";
        } else {
            map.put("name", name);
            return "welcome";
        }

    }
}
