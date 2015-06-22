package com.vms.dao.base;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.vms.bean.base.Company;

@Repository
@Transactional
public class CompanyDao extends CommonDao<Company, Integer> {

	public Company save(Company company) {
		if (company != null) {
			try {
				getSession().save(company);
				return company;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}
		return null;
	}

	public Company findById(Integer id) {
		if (id != null && id > 0) {
			String hql = "FROM Company WHERE id = ? AND isDelete = 0 AND status = 0";
			return (Company) getSession()
					.createQuery(hql)
					.setInteger(0, id)
					.uniqueResult();
		}
		return null;
	}

	public Company update(Company company) {
		if (company != null) {
			try {
				getSession().update(company);
				
				return company;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}
		return null;
	}

}
