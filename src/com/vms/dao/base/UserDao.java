package com.vms.dao.base;

import java.util.Date;

import javax.transaction.Transactional;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import com.vms.bean.base.User;
@Repository
@Transactional
public class UserDao extends CommonDao<User, Integer>  {
	
	/**
	 * 根据id找用户 
	 * @param id
	 * @return
	 */
	public User findById(Integer id) {
		if(id != null && id > 0){
			String hql = "SELECT u FROM User u where id = ?";
			return 	(User) getSession().createQuery(hql)
					.setInteger(0, id)
					.uniqueResult();
		}
		return null;
	}
	
	/**
	 * 更新用户
	 * @param user
	 * @return
	 */
	public User update(User user) {
		if(user != null){
			user.setUpdateTime(new Date());
			updateDefault(user);
			return user;
		}
		return null;
	}

	/**
	 * 保存新用户
	 * @param user
	 * @return
	 */
	public User create(User user) {
		if(user != null){
			user.setCreateTime(new Date());
			getSession().save(user);
			return user;
		}
		return null;
	}

	/**
	 * 
	* @Title: findByAccount
	* @Description: 根据帐号找用户
	* @author yuanzhong
	* @param @param uuid
	* @param @return
	* @return User
	* @throws
	 */
	public User findByAccount(String uuid) {
		if(StringUtils.isNotEmpty(uuid)){
			String hql = "SELECT u FROM User u where account = ?";
			return 	(User) getSession().createQuery(hql)
					.setString(0,uuid)
					.uniqueResult();
		}
		return null;
	}

}
