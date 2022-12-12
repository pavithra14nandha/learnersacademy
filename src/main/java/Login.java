

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String password= request.getParameter("password");
		PrintWriter pw=response.getWriter();
		RequestDispatcher rd=null;
		
		
		if(!name.isEmpty()&& !password.isEmpty()) {
		if(name.equals(password)) {
        HttpSession session=request.getSession();
		session.setAttribute("username", name);
		//System.out.println("success");
		//session.setMaxInactiveInterval(60);
		response.sendRedirect("home.jsp");
		//rd=request.getRequestDispatcher("home.jsp");
		//rd.forward(request, response);
}
		else {
			rd=request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
			pw.print("<center><span style='color:red'>"+"username and password doesn't match"+"</span></center>");
		}
		}
		else
		{
			rd=request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
			pw.print("<center><span style='color:red'>"+"please fill username and password"+"</span></center>");	
		}
	}

}
