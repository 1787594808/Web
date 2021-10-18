package controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
//import org.easybooks.test.jdbc.SqlSrvDBConn;
//import org.easybooks.test.model.vo.UserTable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.UserMapper;
import entity.User;

@Controller
@RequestMapping("/hello")
public class test {
	@RequestMapping(method=RequestMethod.POST)
	public  String welcome(HttpServletRequest request) throws IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session2=request.getSession();
		session2.setAttribute("username", request.getParameter("username"));
    	session2.setAttribute("password", request.getParameter("password"));
		String usr=request.getParameter("username");		
		String pwd=request.getParameter("password");		
		boolean validated=false;
		String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession session=sqlSessionFactory.openSession();
        UserMapper mapper=session.getMapper(UserMapper.class);
	    List<User> users=mapper.SelectUser();
	    for ( User user : users) {
	    	if(usr.equals(user.getUsername())&&pwd.equals(user.getPassword())) {
	    		validated = true;
	    		break;
	    	}
        }
        session.commit();
        session.close();
        if(validated)
        {
        	return("welcome");
        }
        else{
        	System.out.println("µÇÂ½Ê§°Ü");
        	return ("login");
        }
	}
}
