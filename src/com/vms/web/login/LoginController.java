package com.vms.web.login;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vms.bean.base.User;
import com.vms.service.login.LoginService;
/**
 * 
* @ClassName: LoginController
* @Description: 系统登录控制器
* @author yuanzhong
* @date 2015年3月22日 下午3:41:34
*
 */
@Controller
public class LoginController {
	
	Log log = LogFactory.getLog(getClass());
	
	@Autowired
	public LoginService loginService;
	
	@RequestMapping(value="/index")
	public String index(){
		return "login";
	}
	
	
	@RequestMapping(value="/main")
	public String main(){
		return "main";
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		log.info("=========> 用户：" + session.getAttribute("uuid") + " 注销了登录！  " + new Date());
		session.invalidate();
		return "redirect:index.jsp";
	}
	
	@RequestMapping(value="/login")
	@ResponseBody
	public String login(HttpServletRequest request,
			HttpSession session,
			@RequestParam (required=false) String account,
			@RequestParam (required=false) String password) throws Exception{
		String result = null;
		System.out.println(account +"============="+password);
		if(StringUtils.isNotEmpty(account) && StringUtils.isNotEmpty(password)){
			User user = loginService.findByAccountAndPasswrod(account,password);
			if(user !=null){
				session.setAttribute("uuid", user.getAccount());
				session.setAttribute("user", user);
				log.info("=========> 用户：" + account + " 登录成功！  " + new Date());
				result = "success";
			}
		}else{
			result = "fail";
		}
		return result;
	}

}
