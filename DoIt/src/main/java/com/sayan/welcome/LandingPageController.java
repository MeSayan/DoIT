package com.sayan.welcome;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LandingPageController {
    @RequestMapping(value = "/", method=RequestMethod.GET)
    public String showLandingPage() {
        return "index";
    }
}
