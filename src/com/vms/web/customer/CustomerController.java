package com.vms.web.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/customer")
public class CustomerController {
	
	@RequestMapping(value="/info.jxp")
	public String info(){
		return "model/customer/ctm_info";
	}
	
	@RequestMapping(value="/setting.jxp")
	public String setting(){
		return "model/customer/ctm_setting";
	}

}
