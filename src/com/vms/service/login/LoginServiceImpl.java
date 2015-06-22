package com.vms.service.login;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vms.bean.base.User;
import com.vms.dao.login.LoginDao;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired
	public LoginDao loginDao;
	

	@Override
	public User findByAccountAndPasswrod(String account, String password) {
		if(StringUtils.isNotEmpty(account) && StringUtils.isNotEmpty(password)){
			return loginDao.queryByAccountAndPassword(account,password);
		}
		return null;
	}

}
