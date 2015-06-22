package com.vms.web.vehicle;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/vehicle")
public class VehicleSettingController {
	
	@RequestMapping(value="/setting.jxp")
	public String info(){
		return "model/vehicle/vehicleSetting";
	}
}
