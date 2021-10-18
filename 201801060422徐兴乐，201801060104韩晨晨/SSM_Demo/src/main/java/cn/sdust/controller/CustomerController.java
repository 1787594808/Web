package cn.sdust.controller;
import cn.sdust.dao.CustomerDao;
import cn.sdust.pojo.*;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.json.JsonObject;
import javax.servlet.http.HttpServletRequest;
import java.net.URLDecoder;
import java.sql.Timestamp;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.text.SimpleDateFormat;
@Controller
public class CustomerController {
    @Resource
    private CustomerDao customerDao;
    @RequestMapping("/customer")
    public ModelAndView tocustomer(ModelAndView mv)
    {
        List<Customer> customers = customerDao.selectCustomer();
        mv.addObject("customers",customers);
        mv.setViewName("customer");
        return mv;
    }
    @RequestMapping(value = "/customer/list",produces = "application/json;charset=utf-8 ")
    @ResponseBody
    public CustomerList toList(@RequestBody String data) throws Exception
    {
        JSONObject js = JSONObject.parseObject(data);
        searchParams sp = JSONObject.toJavaObject(js,searchParams.class);
        List<Customer> list;
        if(sp.getSortOrder()==0){
            sp.setOr("asc");
        }
        else{
            sp.setOr("desc");
        }
//        System.out.println(sp.getStartNextContactDate());
//        System.out.println(sp.getEndNextContactDate());
//        System.out.println(data);
//        if(sp.getStartNextContactDate()!=null&&sp.getEndNextContactDate()!=null)
//       {
//            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");    //格式化规则
//            String strDate= sdf.format(sp.getStartNextContactDate()); //格式化成yyyy-MM-dd格式的时间字符串
////            Date newDate =sdf.parse(strDate);
////            sp.setStartCreateDate(newDate);
////            String strDate1= sdf.format(sp.getEndCreateDate()); //格式化成yyyy-MM-dd格式的时间字符串
////            Date newDate1 =sdf.parse(strDate1);
////            sp.setEndCreateDate(newDate);
////            System.out.println(sp.getStartCreateDate());
//        }
        list = customerDao.selectCustomerA(sp);
        Items items= new Items(1,list);
        CustomerList customerList = new CustomerList(10,"hhh",items);
        return customerList;
    }
    @RequestMapping(value = "/customer/add",produces = "application/json;charset=utf-8 ")
    @ResponseBody
    public Customer toAdd(@RequestBody String ss,HttpServletRequest request) throws Exception
    {
        ss = URLDecoder.decode(ss, "UTF-8");
        System.out.println(ss);
        Customer c = new Customer();
        String []s = ss.split("&");
        String []s1 = s[0].split("=");
        c.setName(s1[1]);

        String []s2 = s[1].split("=");
        c.setEncodedOwnerUserId(s2[1]);

        String []s3 = s[2].split("=");
        String x = s3[1];
        c.setCategoryId(x);

        String []s4 = s[3].split("=");
        c.setProvince(s4[1]);

        String []s5 = s[4].split("=");
        c.setCity(s5[1]);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String str = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
        System.out.println(str);
        Date d = df.parse(str);
//        Date d = new Date();
//        long t = d.getTime();//时间戳
//        String dateString = String.valueOf(t);
//        SimpleDateFormat myFmt=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        Date date = myFmt.parse(dateString);
        c.setCreateDate(d);
        c.setDisA(0);

        if(c.getEncodedOwnerUserId().equals(request.getSession().getAttribute("user")))
        {
            c.setDisA(1);
        }
        customerDao.InsertCustomer(c);
        return c;

    }
    @RequestMapping(value = "/customer/delete/batch")
    @ResponseBody
    public int todelete(@RequestBody String data)
    {
        System.out.println(data);
        String []s = data.split("=");
        int x = Integer.parseInt(s[1]);
        customerDao.deleteCustomer(x);
        return 1;
    }
    @RequestMapping(value = "/customer/update/batch/category")
    @ResponseBody
    public int tochangeCategory(@RequestBody String data)
    {
        System.out.println(data);
        String []s = data.split("&");
        String []s1 = s[0].split("=");
        int x = Integer.parseInt(s1[1]);

        String []s2 = s[1].split("=");
        customerDao.updateCustomerCategory(x,s2[1]);
        return 1;
    }
    @RequestMapping(value = "/profile/field/update/sort",produces = "application/json;charset=utf-8")
    @ResponseBody
    public int tosort(@RequestBody String s)
    {
        return 1;
    }
    @RequestMapping(value = "/customer/update/batch/nextContactDate",produces = "application/json;charset=utf-8 ")
    @ResponseBody
    public int toUpdateNextTime(@RequestBody String dd)throws ParseException
    {
        System.out.println(dd);
        String []s1 = dd.split("&");
        String []ss1=s1[0].split("=");
        int id=Integer.parseInt(ss1[1]);
        String []ss2=s1[1].split("=");
        String newS=ss2[1].replace("%3A","-");
        SimpleDateFormat myFmt=new SimpleDateFormat("yyyy-MM-dd+HH-mm-ss");
        Date date = myFmt.parse(newS);
        Timestamp timeStamp = new Timestamp(date.getTime());
        customerDao.updateCustomerNextTime(id,timeStamp);
       // System.out.println(date);
        return 1;
    }

    @RequestMapping(value = "/customer/share/batch",produces = "application/json;charset=utf-8 ")
    @ResponseBody
    public int toShareCustomer(@RequestBody String dd, HttpServletRequest request)throws Exception
    {
        dd = URLDecoder.decode(dd, "UTF-8");
        System.out.println(dd);
        String []s1 = dd.split("&");
        String []ss1=s1[0].split("=");
        int id=Integer.parseInt(ss1[1]);
        String nn=customerDao.findUserById(id);
        System.out.println(nn);
        if(nn.equals(request.getSession().getAttribute("user")))
        {
            customerDao.updateDisA(id,3);
        }
        else
        {
            customerDao.updateDisA(id,2);
        }
        return 1;
    }
    @RequestMapping(value = "/customer/transfer/",produces = "application/json;charset=utf-8 ")
    @ResponseBody
    public int toTransfer(@RequestBody String ss)
    {
        System.out.println(111111111);
        System.out.println(ss);
        //ownerUserId=xxl&ids=4&transferDeal=0&transferContract=0
        String []s1 = ss.split("&");
        String []ss1 = s1[0].split("=");
        String []ss2 = s1[1].split("=");
        String name=ss1[1];
        int id=Integer.parseInt(ss2[1]);
        customerDao.updateCustomerUser(id,name);
        return 1;
    }
    @RequestMapping(value = "/customer/duplicate",produces = "application/json;charset=utf-8 ")
    @ResponseBody
    public  List<Customer> Zhangdan(@RequestBody String ss)
    {
        System.out.println(ss);
        String []s = ss.split("=");

        List<Customer> list = customerDao.selectCustomerbyName(s[1]);
        System.out.println(list.size());
        return list;
    }
}