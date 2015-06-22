package com.vms.service.base;

import com.vms.bean.base.User;

public interface IUserService {
	
	public User findById(Integer id);

	public User update(User user);

	public User create(User user);

	public User findByAccount(String uuid);

}
