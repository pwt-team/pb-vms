package com.vms.dao.login;

import org.springframework.stereotype.Repository;

import com.vms.bean.base.User;
import com.vms.dao.base.CommonDao;
/**
 * 
* @ClassName: LoginDao
* @Description: 用户登录
* @author yuanzhong
* @date 2015年4月24日 下午10:35:23
*
 */
@Repository
public class LoginDao extends CommonDao<User, Integer>{

	/**
	 * 
	* @Title: queryByAccountAndPassword
	* @Description: 根据用户及密码验证用户有效性
	* @author yuanzhong
	* @param @param account
	* @param @param password
	* @param @return
	* @return User
	* @throws
	 */
	public User queryByAccountAndPassword(String account, String password) {
		User user = null;
		String hql = "SELECT u FROM User u Where account = ? AND password = ? AND isDelete = 0 ";
		user = (User) getSession().createQuery(hql).setString(0, account).setString(1, password).uniqueResult();
		return user;
	}

}
