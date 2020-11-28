package com.yuukkiyg.sampledockerjava;

import java.time.LocalDateTime;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class MainController {

	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String sayHello() {
		String message = "Hello! Current time is " + LocalDateTime.now();
		log.info("Endpoint called. Result Message = [{}]", message);
		return message;
	}

}
