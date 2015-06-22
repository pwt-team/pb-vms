package com.vms.web.base;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.json.JSONException;
import org.apache.struts2.json.JSONUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.vms.bean.base.Company;
import com.vms.common.Constants;
import com.vms.dao.base.CompanyDao;

/**
 * 
* @ClassName: BaseController
* @Description: 基础信息控制器
* @author yuanzhong
* @date 2015年3月22日 下午5:49:07
*
 */
@Controller
@RequestMapping(value="/company")
public class CompanyController {
	@Autowired
	public CompanyDao companyDao;
	
	
	@RequestMapping(value="/index/{id}")
	//@ResponseBody
	public ModelAndView complay(HttpServletRequest request,
			@PathVariable("id")Integer id){
		ModelAndView modelAndView = new ModelAndView();
		Company company = companyDao.findById(id);
		modelAndView.setViewName("model/base/company");
		modelAndView.addObject("company",company);
		return modelAndView;
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
	@RequestMapping(value="/create.jxp",method=RequestMethod.POST)
	@ResponseBody
	public String create(HttpServletRequest request,HttpSession session,
			@RequestParam (required = false) Integer id,
			@RequestParam (required = false) String code,
			@RequestParam (required = false) String fullName,
			@RequestParam (required = false) String shortName,
			@RequestParam (required = false) String web,
			@RequestParam (required = false) String phone){
		boolean isNew = false;
		Company company = companyDao.findById(id);
		if(company == null){
			company = new Company();
			isNew = true;
		}
		company.setCode(code);
		company.setFullName(fullName);
		company.setShortName(shortName);
		company.setPhone(phone);
		company.setWeb(web);
		company.setIsDelete(Constants.TAG_0);
		company.setStatus(Constants.TAG_0);
		if(isNew ==true){
			company.setCreateTime(new Date());
			company.setCreateUser((Integer) session.getAttribute("userId"));
			company = companyDao.save(company);
		}else{
			company.setUpdateTime(new Date());
			company.setUpdateUser((Integer) session.getAttribute("userId"));
			company = companyDao.update(company);
		}
		try {
			return JSONUtil.serialize(company);
		} catch (JSONException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
}
