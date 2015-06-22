package com.vms.service.login;

import com.vms.bean.base.User;

public interface LoginService {

	public User findByAccountAndPasswrod(String account, String password);

}
