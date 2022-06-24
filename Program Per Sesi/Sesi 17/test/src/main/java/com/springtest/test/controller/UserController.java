package com.springtest.test.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "api-test/v1")
public class ApiTesting {
	@GetMapping(value = "/get")
	public String apiTesting() {
		return "Api Test";
	}

}
