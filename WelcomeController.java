package com.ashok.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class WelcomeController {

	@GetMapping("/welcome")
	public @ResponseBody String welcomeMsg(@RequestParam("name") String name) {
		return "Hey " + name + ", Welcome to AJAX";
	}
}
