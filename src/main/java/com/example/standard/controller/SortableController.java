package com.example.standard.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

public interface SortableController {

	@GetMapping("/list/{sortType}")
	String list(@PathVariable("sortType") String sortType, Model model);
}
