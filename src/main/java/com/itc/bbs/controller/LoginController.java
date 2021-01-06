package com.itc.bbs.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itc.bbs.domain.LoginVO;
import com.itc.bbs.domain.RegisterVO;
import com.itc.bbs.service.LoginService;
import com.itc.bbs.service.RegisterService;


@Controller
public class LoginController {
	@Autowired
	LoginService lService;
	
	@Autowired
	RegisterService rService;
	
	@GetMapping("/login")
	public String getLogin(Model model) throws Exception {
		return "login/login";
	}
	
	@PostMapping("/loginPost")
	public @ResponseBody Object postLogin(Model model, LoginVO vo, HttpSession session) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		LoginVO lVo = lService.checkLogin(vo);
		if(lVo.getCnt() > 0) {
			session.setAttribute("member", lVo);
		} else {
			map.put("notFoundAccount", true);
		}
		
		return map;
	}
	
	@GetMapping("/logout")
	public String getLogout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/register")
	public String getRegister() throws Exception {
		return "login/register";
	}
	
	@PostMapping("/register")
	public @ResponseBody Object postRegister(RegisterVO vo, Model model) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int overlapUserId = rService.getOverlapUserId(vo.getUserId());
		if(overlapUserId > 0) {
			map.put("overlapUserId", true);
			return map;
		}
		
		rService.addUser(vo);
		
		return map;
	}
	
	@GetMapping("/updateUserInfo")
	public String getUpdateUserInfo() throws Exception {
		return "login/updateUserInfo";
	}
	
	@PostMapping("updateUserAddress")
	public String updateUserAddress(LoginVO vo, HttpSession session) throws Exception {
		lService.updateUserAddress(vo);
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	@PostMapping("updateUserPassword")
	public String updateUserPassword(LoginVO vo, HttpSession session) throws Exception {
		lService.updateUserPassword(vo);
		
		session.invalidate();
		
		return "redirect:/";
	}
}






