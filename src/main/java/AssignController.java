

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.academy.dao.AssignDao;
import com.academy.dao.SchoolClassDao;
import com.pojo.SchoolClass;
import com.pojo.ReportSubjectTeacher;

/**
 * Servlet implementation class AssignController
 */
public class AssignController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignController() {
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
		ReportSubjectTeacher rp=new ReportSubjectTeacher();
		String arr[]=request.getParameter("teacher").split(",");
		rp.setCid(Integer.parseInt(request.getParameter("cid")));
		SchoolClassDao vf=new SchoolClassDao();
		SchoolClass cc=vf.getcls(Integer.parseInt(request.getParameter("cid")));
		String name=cc.getClass_Name();
		rp.setClassName(name);
		
		String arr1[]=request.getParameter("teacher").split(",");
		rp.settName(arr1[1]);
		rp.setSubid(0);
		String arr2[]=request.getParameter("subject").split(",");
		rp.setSuBName(arr2[1]);
		rp.setTid(0);
		
		AssignDao assignDao=new AssignDao();
		String s=assignDao.insert(rp);
		
		if(s.equalsIgnoreCase("data inserted")) {
			response.sendRedirect("home.jsp");
		}
		else {
			PrintWriter pw= response.getWriter();
			pw.print("failed");
		}
	}
	}


