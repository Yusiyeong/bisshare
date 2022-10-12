package com.bs.cloud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("cloud")
public class CloudController {

	// 게시글 조회(화면)
	@GetMapping("list")
	public String list(Model model) {
		
		model.addAttribute("title", "CLOUD");
		model.addAttribute("page", "cloud/list");

		return "layout/template";
		
	}//list
	
	// 게시글 조회(화면)
	@GetMapping("write")
	public String write(Model model) {
		
		model.addAttribute("title", "CLOUD");
		model.addAttribute("page", "cloud/write");

		return "layout/template";
		
	}//list
		
	
}//class
