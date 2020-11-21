package com.duoc.prueba2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class WebController {

	@GetMapping("/")
	public String getIndex() {
		return "index";
	}

	@GetMapping("/login")
	public String login() {		
		return "login";
	}
	
	@GetMapping("/403")
	public String get403() {
		return "403";
	}
	
	@GetMapping("/servicioPremium")
	public String getServicioPremium() {
		return "servicioPremium";
	}
	
	@GetMapping("/servicioTurismo")
	public String getServicioTurismo() {
		return "servicioTurismo";
	}
	@PostMapping("/logout")
	public String getLogout() {
		return "login";
	}
}
