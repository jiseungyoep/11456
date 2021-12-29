package com.user.user.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.user.user.entity.User;
import com.user.user.service.UserService;

@Controller
public class TestController {
	
	@Autowired
	UserService userService;
	
	@GetMapping("join")
	public String joinForm() {
		return "Join";
		
	}
	
	@PostMapping("join")
	public String join(User user, Model model) {
		String result = userService.join(user);
		
		model.addAttribute("result", result);
		return "join";
		
	}
	
	@GetMapping("login")
	public String loginPage() {
		return "login";
	}

	@PostMapping("login")
	public String login(User user, HttpServletRequest req, RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		User login = userService.login(user);
		
		if(login == null) {
			session.setAttribute("user", null);
			rttr.addFlashAttribute("msg", false);
		    return "login";
		}else {
			session.setAttribute("user", login);
			return "redirect:/";
		}
	}

}
