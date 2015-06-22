package com.vms.web.base;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PermissionController {
	
	@RequestMapping(value="/permission.jxp")
	public String edit(){
		return "model/base/permission";
	}

}
