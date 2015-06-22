package com.vms.dao.vehicle;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.vms.bean.vehicle.VechicleTruck;
import com.vms.dao.base.CommonDao;
@Repository
@Transactional
public class VehicleTruckDao extends CommonDao<VechicleTruck, Integer> {


}
