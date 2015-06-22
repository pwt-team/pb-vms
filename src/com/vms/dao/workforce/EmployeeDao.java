package com.vms.dao.workforce;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.vms.bean.workforce.Employee;
import com.vms.dao.base.CommonDao;
@Repository
@Transactional
public class EmployeeDao extends CommonDao<Employee, Integer> {

}
