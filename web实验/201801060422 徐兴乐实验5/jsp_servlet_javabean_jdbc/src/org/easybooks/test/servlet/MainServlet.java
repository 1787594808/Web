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
		request.setCharacterEncoding("utf-8");				//�����������
		String usr=request.getParameter("username");			//��ȡ�ύ���û���
		String pwd=request.getParameter("password");			//��ȡ�ύ������

		boolean validated=false;							//��֤�ɹ���ʶ
		SqlSrvDBConn sqlsrvdb=new SqlSrvDBConn();
		HttpSession session=request.getSession();	//��ûỰ�����������浱ǰ��¼�û�����Ϣ
		UserTable user=null;
		    //�Ȼ��UserTable��������ǵ�һ�η��ʸ�ҳ���û�����϶�Ϊ�գ�������ǵڶ��������ǵ����Σ�
		  	//��ֱ�ӵ�¼��ҳ�������ٴ��ظ���֤���û�����Ϣ
		user=(UserTable)session.getAttribute("user");
		/*System.out.println("======");
		user.setPassword(pwd);
		user.setUsername(usr);
		user.setId(1);
		System.out.println(user);*/

		    //����û��ǵ�һ�ν��룬�Ự����δ�洢user�־û����󣬹�Ϊnull
		//System.out.println(user);
		if(user==null){
		    //��ѯuserTable���еļ�¼
			String sql="select * from usertable";
			ResultSet rs=sqlsrvdb.executeQuery(sql);//ȡ�ý����
			try {
				while(rs.next())	{
					if((rs.getString("username").trim().compareTo(usr)==0)&&(rs.getString("password"). compareTo(pwd)==0)){
						user=new UserTable();	//�����־û���JavaBean����user
						user.setId(rs.getInt(1));
						user.setUsername(rs.getString(2));
						user.setPassword(rs.getString(3));
						session.setAttribute("user", user);	//��user����洢�ڻỰ��
						validated=true;				//��ʶΪtrue��ʾ��֤�ɹ�ͨ��
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
			System.out.println("�ѵ�¼");
	    	validated=true;//���û���֮ǰ�ѵ�¼�����ɹ���֤���ʱ�ʶΪtrue��ʾ����������
		}
        if(validated)
        {
            //��֤�ɹ���ת��main.jsp
        	response.sendRedirect("main.jsp");
        }
        else{
            //��֤ʧ����ת��error.jsp
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
	            //1��ע��JDBC����
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            //2����ȡ���ݿ�����
	            Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
	            //3���������ݿ�
	            Statement statement = connection.createStatement();//��ȡ�������ݿ�Ķ���
	            String sql="select * from usertable";
	            ResultSet resultSet = statement.executeQuery(sql);//ִ��sql����ȡ�����

	            while(resultSet.next()){ //�����������ȡ������
	                int id = resultSet.getInt("id");
	                String username = resultSet.getString("username");
	                String pwd = resultSet.getString("password");
	                //�������
	                System.out.print("id��"+id);
	                System.out.print("���û�����"+username);
	                System.out.print("������"+pwd);
	                System.out.println();
	            }
	            //4���رս���������ݿ�����������ݿ�����
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
