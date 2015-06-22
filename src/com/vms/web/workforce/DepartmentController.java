package com.vms.web.workforce;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/department")
public class DepartmentController {
	
	@RequestMapping(value="/index")
	public String index(){
		return "model/workforce/index";
	}
	
	
	@RequestMapping(value="/setting")
	public String setting(){
		return "model/workforce/setting";
	}

}
