package org.easybooks.test.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.easybooks.test.jdbc.SqlSrvDBConn;
import org.easybooks.test.model.vo.UserTable;;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");				//设置请求编码
		String usr=request.getParameter("username");			//获取提交的用户名
		String pwd=request.getParameter("password");			//获取提交的密码

		boolean validated=false;							//验证成功标识
		SqlSrvDBConn sqlsrvdb=new SqlSrvDBConn();
		HttpSession session=request.getSession();	//获得会话对象，用来保存当前登录用户的信息
		UserTable user=null;
		    //先获得UserTable对象，如果是第一次访问该页，用户对象肯定为空，但如果是第二次甚至是第三次，
		  	//就直接登录主页而无须再次重复验证该用户的信息
		user=(UserTable)session.getAttribute("user");
		/*System.out.println("======");
		user.setPassword(pwd);
		user.setUsername(usr);
		user.setId(1);
		System.out.println(user);*/

		    //如果用户是第一次进入，会话中尚未存储user持久化对象，故为null
		//System.out.println(user);
		if(user==null){
		    //查询userTable表中的记录
			String sql="select * from usertable";
			ResultSet rs=sqlsrvdb.executeQuery(sql);//取得结果集
			try {
				while(rs.next())	{
					if((rs.getString("username").trim().compareTo(usr)==0)&&(rs.getString("password"). compareTo(pwd)==0)){
						user=new UserTable();	//创建持久化的JavaBean对象user
						user.setId(rs.getInt(1));
						user.setUsername(rs.getString(2));
						user.setPassword(rs.getString(3));
						session.setAttribute("user", user);	//把user对象存储在会话中
						validated=true;				//标识为true表示验证成功通过
					}
				}
		  		rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			sqlsrvdb.closeStmt();
			sqlsrvdb.closeConn();
		}
		else{
			System.out.println("已登录");
	    	validated=true;//该用户在之前已登录过并成功验证，故标识为true表示无须再验了
		}
        if(validated)
        {
            //验证成功跳转到main.jsp
        	response.sendRedirect("main.jsp");
        }
        else{
            //验证失败跳转到error.jsp
        	response.sendRedirect("error.jsp");
        }
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		String DB_URL="jdbc:mysql://localhost:3306/mysql test?serverTimezone=UTC";
	    String USER="root";
	    String PASS="Lele001028@l";
	        try {
	            //1、注册JDBC驱动
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            //2、获取数据库连接
	            Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
	            //3、操作数据库
	            Statement statement = connection.createStatement();//获取操作数据库的对象
	            String sql="select * from usertable";
	            ResultSet resultSet = statement.executeQuery(sql);//执行sql，获取结果集

	            while(resultSet.next()){ //遍历结果集，取出数据
	                int id = resultSet.getInt("id");
	                String username = resultSet.getString("username");
	                String pwd = resultSet.getString("password");
	                //输出数据
	                System.out.print("id："+id);
	                System.out.print("，用户名："+username);
	                System.out.print("，密码"+pwd);
	                System.out.println();
	            }
	            //4、关闭结果集、数据库操作对象、数据库连接
	            resultSet.close();
	            statement.close();
	            connection.close();
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        } catch(SQLException e){
	            e.printStackTrace();
	        } catch(Exception e){
	            e.printStackTrace();
	        }

	}

}
