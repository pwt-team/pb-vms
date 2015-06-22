package com.vms.service.base;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vms.bean.base.User;
import com.vms.dao.base.UserDao;

@Service
public class IUserServiceImpl implements IUserService {

	@Autowired
	public UserDao userDao;
	
	@Override
	public User findById(Integer id) {
		if(id != null){
			return userDao.findById(id);
		}
		return null;
	}

	@Override
	public User update(User user) {
		if(user != null){
			return userDao.update(user);
		}
		return null;
	}

	@Override
	public User create(User user) {
		if(user != null){
			return userDao.create(user);
		}
		return null;
	}

	@Override
	public User findByAccount(String uuid) {
		if(StringUtils.isNotEmpty(uuid)){
			return userDao.findByAccount(uuid);
		}
		return null;
	}

}
