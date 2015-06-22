package com.vms.web.vehicle;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/vehicle")
public class VehicleInfoController {
	
	@RequestMapping(value="/info.jxp")
	public String info(){
		return "model/vehicle/vehicleInfo";
	}
}
