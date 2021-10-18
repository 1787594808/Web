package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NextServlet
 */
@WebServlet("/NextServlet")
public class NextServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NextServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		res.setHeader("Content-Type", "text/html;charset=UTF-8");
		res.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		String name = req.getParameter("name");
		name = java.net.URLEncoder.encode(name,"utf-8");
		String age = req.getParameter("age");
		System.out.print(name);
		int tage = Integer.valueOf(age);
		if(tage<20) {
			res.getWriter().append("»¶Ó­Äã£¬ÉÙÄê");
		}
		else if(tage>40){
			
			 res.sendRedirect("Old.jsp?name="+name);
		}
	}

}
