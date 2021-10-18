package cn.edu.sdust.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/hello")
public class HelloController {
	@RequestMapping(method=RequestMethod.POST)
	public String printHello(ModelMap model,HttpServletRequest res) throws IOException{
		res.setCharacterEncoding("UTF-8");
		model.addAttribute("message",res.getParameter("username"));
		return "hello";
	}
}
