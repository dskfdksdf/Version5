package com.usc.user.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.xpath.internal.operations.Mod;
import com.usc.user.utils.Base;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.usc.user.bean.UserBean;
import com.usc.user.mapper.UserMapper;

import net.sf.json.JSONArray;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sound.midi.SysexMessage;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserMapper userMapper;

	@ResponseBody
	@RequestMapping("/query")
	public List<UserBean> queryUser() {//��������
		List<UserBean> result=new ArrayList<UserBean>();
		try{//Could not find result map com.usc.user.mapper.UserMapper.UserInfoMap
			//解决：注释掉UserMapper.xml中其他要resultMap的sql语句就好了 good
			 result = userMapper.queryUser();
			JSONArray jsonArray = JSONArray.fromObject(result);
			ModelAndView mAndView = new ModelAndView("project");
			mAndView.addObject("cs", jsonArray);
		}catch (Exception e){
			e.printStackTrace();
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/login")
	public List<UserBean> query(UserBean user) {
		List<UserBean> result = new ArrayList<UserBean>();
		UserBean validateUser = userMapper.validateUserapp(user);
		//	System.out.println(validateUser);
		if (validateUser != null) {
			result.add(validateUser);
		}
		return result;
	}

	@ResponseBody
	@RequestMapping("/regist")
	public List<UserBean> regist(UserBean user) {
		List<UserBean> result = new ArrayList<UserBean>();
		//Integer checkUser = userMapper.checkUser(user);
		Integer insertUser = userMapper.insertUser(user);//返回影响行数1
		result.add(user);
		//System.out.println(result);  仅仅调试
		return result;//返回的是List 用JSONArray
	}

/*	@ResponseBody
	@RequestMapping("/webpage")
	public ModelAndView webpageController(UserBean userBean, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView modelAndView = new ModelAndView("queryone");
		try {
			String xuhao = request.getParameter("xuhao");
			Integer xuhaoInt = new Integer(1);
			if (xuhao != null)
				if (!xuhao.equals(""))
					xuhaoInt = Integer.parseInt(xuhao);
//System.out.println(xuhao+" "+xuhaoInt);
			String password = request.getParameter("password");
//System.out.println(password);
			String role=request.getParameter("roleId");

			Integer roleid=new Integer(1);
			if (role!=null)
				if (!role.equals(""))
			roleid=Integer.parseInt(role);
//System.out.println(role+" "+roleid);
//System.out.println(xuhaoInt+" "+password+" "+roleid);
			userBean.setId(xuhaoInt);
			userBean.setPassword(password);
		//	System.out.println(userBean);
			if (userBean.getId() != null)
				if (userBean.getPassword() != null)
					userBean = userMapper.validateUser(userBean);//序号和密码不为空而且通过认证，而且认证后不为空 就跳转到userquery.jsp
		*//*	if (userBean!=null){
			//	System.out.println(userBean);
			}*//*
		} catch (Exception e) {
			e.printStackTrace();
		}
		//	System.out.println(userBean);
			if (userBean.getPassword() != null){
				Base.ID=userBean.getId();
				Base.USERNAME=userBean.getUsername();
				Base.PASSWORD=userBean.getPassword();

				System.out.println(Base.ID+" "+Base.USERNAME+" "+Base.PASSWORD+" "+Base.ROLEINT);//存到变量中
			}else
				modelAndView = new ModelAndView("userquery");

		return modelAndView;
	}*/
}
