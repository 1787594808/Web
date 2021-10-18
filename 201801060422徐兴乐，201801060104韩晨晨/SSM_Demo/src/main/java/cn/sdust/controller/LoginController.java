package cn.sdust.controller;

import cn.sdust.dao.CustomerDao;
import cn.sdust.pojo.Customer;
import cn.sdust.pojo.User;
import cn.sdust.service.ICustomerService;
import cn.sdust.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class LoginController {

    @Autowired
    private IUserService userService;
    @Autowired
    private ICustomerService customerService;
    @RequestMapping("/login")
    public ModelAndView tologin(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            ModelAndView mv, HttpServletRequest request)
    {
        User u = new User();
        u.setUsername(username);
        u.setPassword(password);
        List<User> user = userService.ListUsersByParam(u);
        System.out.println(username);
        System.out.println(password);
        System.out.println(user.size());
        if(user.size()!=0){
            request.getSession().setAttribute("user",username);
            mv.setViewName("customer");
        }
        else
        {
            mv.addObject("errormeg","账号或密码错误！请重新登录!");
            mv.setViewName("redirect:/login.jsp");
        }
        return mv;
    }

    @RequestMapping("/register")
    public ModelAndView toregister(
            ModelAndView mv)
    {
        mv.setViewName("redirect:/register.jsp");
        return mv;
    }
    @RequestMapping("/save")
    public ModelAndView tosave(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            ModelAndView mv)
    {
        User u = new User();
        u.setUsername(username);
        u.setPassword(password);
        userService.AddUser(u);
        mv.setViewName("redirect:/login.jsp");
        return mv;
    }
    @RequestMapping("/workbench")
    public ModelAndView toworkbench(ModelAndView mv)
    {
        mv.setViewName("workbench");
        return mv;
    }
    @RequestMapping("/publicCustomer")
    public ModelAndView topublicCustomer(ModelAndView mv)
    {
        mv.setViewName("publicCustomer");
        return mv;
    }
    @RequestMapping("/contact")
    public ModelAndView tocontact(ModelAndView mv)
    {
        mv.setViewName("contact");
        return mv;
    }
    @RequestMapping("/weixin")
    public ModelAndView toweixin(ModelAndView mv)
    {
        mv.setViewName("weixin");
        return mv;
    }
    @RequestMapping("/deal")
    public ModelAndView todeal(ModelAndView mv)
    {
        mv.setViewName("deal");
        return mv;
    }
    @RequestMapping("/contract")
    public ModelAndView tocontract(ModelAndView mv)
    {
        mv.setViewName("contract");
        return mv;
    }
    @RequestMapping("/payment")
    public ModelAndView topayment(ModelAndView mv)
    {
        mv.setViewName("payment");
        return mv;
    }
    @RequestMapping("/note")
    public ModelAndView tonote(ModelAndView mv)
    {
        mv.setViewName("note");
        return mv;
    }
    @RequestMapping("/worksheet")
    public ModelAndView toworksheet(ModelAndView mv)
    {
        mv.setViewName("worksheet");
        return mv;
    }
    @RequestMapping("/product")
    public ModelAndView toproduct(ModelAndView mv)
    {
        mv.setViewName("product");
        return mv;
    }
    @RequestMapping("/workReport")
    public ModelAndView toworkReport(ModelAndView mv)
    {
        mv.setViewName("workReport");
        return mv;
    }
    @RequestMapping("/records")
    public ModelAndView torecords(ModelAndView mv)
    {
        mv.setViewName("records");
        return mv;
    }
}
