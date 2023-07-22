package com.fiskrindy.omikujiForm.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	
	@GetMapping("/")
	public String index() {
		return "redirect:/omikuji";
	}
	
	@GetMapping("/omikuji")
	public String omikuji() {
		return "index.jsp";
	}
	
	@GetMapping("/omikuji/show")
	public String show(HttpSession session, Model model) {
		String result = (String) session.getAttribute("omikujiForm");
		model.addAttribute("result", result);
		return "show.jsp";
	}
	
	@PostMapping("/submitOmikuji")
	public String form(
			@RequestParam("number") int number,
			@RequestParam("city") String city,
			@RequestParam("person") String person,
			@RequestParam("hobby") String hobby,
			@RequestParam("livingThing") String livingThing,
			@RequestParam("message") String message,
			HttpSession session) {
		
		String omikujiForm = String.format(
				"In %s years you will live in %s with %s as your roommate, %s. The next time you see a %s, you will have good luck. Also, %s.", number, city, person, hobby, livingThing, message);
		session.setAttribute("omikujiForm", omikujiForm);
		return "redirect:/omikuji/show";		
	}
}
