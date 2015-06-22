package com.vms.web.base;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vms.bean.base.User;
import com.vms.service.base.IUserService;

/**
* @ClassName: UserController
* @Description: 系统用户
* @author yuanzhong
* @date 2015年3月31日 下午9:45:36
*
 */
@Controller
@RequestMapping(value="/user")
public class UserController {
	@Autowired
	public IUserService userService;
	
	/**
	 * 跳到用户管理 首页
	 * @return
	 */
	@RequestMapping(value="/index")
	public String index(){
		return "model/base/useradmin";
	}

	/**
	 * 创建或编辑公司信息
	 * @param request
	 * @param id
	 * @param code
	 * @param fullName
	 * @param shortName
	 * @param web
	 * @param phone
	 * @return
	 */
	@RequestMapping (value="/create.jxp",method = RequestMethod.POST)
	@ResponseBody
	public String create(HttpServletRequest request){
			String id = request.getParameter("id");
			String account = request.getParameter("account");
			String password = request.getParameter("password");
			String nickName = request.getParameter("nickName");
			
		String result = null;
		boolean isNew = false;
		User user = userService.findById(id == null ? null : Integer.valueOf(id));
		if(user == null){
			user = new User();
			isNew = true;
		}
		user.setPassword(password);
		user.setNickName(nickName);
		String uuid = (String)request.getSession().getAttribute("uuid");
		if(isNew ==false){
			user.setUpdateUser(uuid);
			userService.update(user);
			result = "success";
		}else{
			user.setAccount(account);
			user.setIsDelete(0);
			user.setStatus(0);
			user.setCreateUser(uuid);
			userService.create(user);
			result = "success";
		}
		return result;
	}
	
	/**
	 * 生成验证码action
	 * @return
	 */
	@RequestMapping (value="verify.jxp",method=RequestMethod.GET)
	public String verify(){
		return "action/verifycode";
	}
	
	/**
	 * 注册action
	 * @return
	 */
	@RequestMapping (value="registerAction.jxp",method=RequestMethod.POST)
	public String register(HttpServletRequest request){
		return "action/register";
	}	
	
	/**
	 * 更新头像
	 */
	@RequestMapping(value="/updateFace.jxp",method=RequestMethod.POST)
	public void updateFace(String uuid,String img){
		if(StringUtils.isNotEmpty(uuid) && StringUtils.isNotEmpty(img)){
			User user = userService.findByAccount(uuid);
			if(user != null){
				user.setFace(img);
				userService.update(user);
			}
		}
	} 
	
	
	
}
