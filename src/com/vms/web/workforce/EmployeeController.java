package com.vms.web.workforce;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/employee")
public class EmployeeController {
	
	@RequestMapping(value="/info")
	public String index(){
		return "model/workforce/employee";
	}

}
