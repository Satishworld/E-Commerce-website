package com.example.education;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class EducationApplication {

	public static void main(String[] args) {
		SpringApplication.run(EducationApplication.class, args);
	}

	@Autowired
	JdbcTemplate jdbc;

	@GetMapping("/hello")
	public static String index() {
		return "hello alok";
	}

	@PostMapping("/getproduct")
	public List getproduct(@RequestParam("prod_name") String prod_name) {
		String sql = "select * from product_1 where prod_name='" + prod_name + "' ";
		List<Map<String, Object>> li = jdbc.queryForList(sql);
		return li;
	}

}
