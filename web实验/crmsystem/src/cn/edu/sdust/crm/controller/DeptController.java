package cn.edu.sdust.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.sdust.crm.domain.Dept;
import cn.edu.sdust.crm.service.DeptService;

@Controller
@RequestMapping("/dept")
public class DeptController {
	
	@Autowired
	private DeptService deptService;
	
	@RequestMapping("/deptList")
	public ModelAndView deptList(ModelAndView mv){
		
		List<Dept> depts = deptService.ListAllDepts();
		mv.addObject("depts",depts);
		mv.setViewName("depts");
		return mv;
	}

	@RequestMapping("/d_search")
	public ModelAndView dep(ModelAndView mv){
		mv.setViewName("deptsearch");
		return mv;
	}

	@RequestMapping("/search")
	public ModelAndView deptSearchedList(
			@RequestParam("deptname") String deptname,
			@RequestParam("deptaddress") String deptaddress,
			ModelAndView mv){
		
		if (deptname =="") ;
		if (deptaddress =="") ;
		
		Dept d = new Dept();
		d.setDeptname(deptname);
		d.setDeptaddress(deptaddress);
		List<Dept> depts = deptService.ListDeptsByParam(d);
 
		mv.addObject("depts",depts);
		mv.setViewName("showsearch");
		return mv;		
	}
	
	@RequestMapping("/toadd")
	public ModelAndView deptadd(ModelAndView mv){
		
        mv.setViewName("deptadd");
		return mv;
	}
	
	@RequestMapping("/toedit")
	public ModelAndView deptedit(@RequestParam("deptid") int deptid,ModelAndView mv){
		Dept d = deptService.ListDeptById(deptid);
		mv.addObject("dept",d);
        mv.setViewName("deptedit");
		return mv;
	}
	@RequestMapping("/todelete")
	public ModelAndView deptdelete(
			@RequestParam("deptid") int deptid,
			ModelAndView mv){
		deptService.RemoveDept(deptid);
		mv.setViewName("redirect:/dept/deptList");
		return mv;
	}

	@RequestMapping("/save")
	public ModelAndView deptsave(@RequestParam("deptid") int deptid,
			@RequestParam("deptname")String deptname,
			@RequestParam("deptaddress")String deptaddress,ModelAndView mv){

		Dept d = new Dept();
		d.setDeptname(deptname);
		d.setDeptaddress(deptaddress);
		d.setDeptid(deptid);
		deptService.AddDept(d);
        mv.setViewName("redirect:/dept/deptList");
		return mv;
	}

	@RequestMapping("/save2")
	public ModelAndView deptsave2(@RequestParam("deptid") int deptid,
								 @RequestParam("deptname")String deptname,
								 @RequestParam("deptaddress")String deptaddress,ModelAndView mv){

		Dept d = new Dept();
		d.setDeptname(deptname);
		d.setDeptaddress(deptaddress);
		d.setDeptid(deptid);
		deptService.EditDept(d);
		mv.setViewName("redirect:/dept/deptList");
		return mv;
	}
}
