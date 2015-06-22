package com.vms.web.bill;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/bill")
public class BillController {
	
	/**
	 * 返回添加/查询运单界面
	 * @return
	 */
	@RequestMapping(value="/add.jxp")
	public String add(){
		return "model/bill/billInfo";
	}
	
	/**
	 * 返回到设置页面
	 * @return
	 */
	@RequestMapping(value="/setting.jxp")
	public String setting(){
		return "model/bill/billSetting";
	}
	
	/**
	 * 返回到设置页面
	 * @return
	 */
	@RequestMapping(value="/view.jxp")
	public String view(){
		return "model/bill/billView";
	}
	

}
