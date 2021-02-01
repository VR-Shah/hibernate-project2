package container;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.vo;
import dao.dao;

/**
 * Servlet implementation class container
 */
@WebServlet("/container")
public class container extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public container() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String s = request.getParameter("flag");
		if(s.equals("search")){
			HttpSession session = request.getSession();
			dao d3 = new dao();
			List ls = d3.search();
			session.setAttribute("data", ls);
			response.sendRedirect("welcome.jsp");
		}
		if(s.equals("delete")){
			String s1 = request.getParameter("id");
			int i1 = Integer.parseInt(s1);
			vo v3 = new vo();
			v3.setId(i1);
			dao d3 = new dao();
			d3.delete(v3);
			response.sendRedirect("welcome.jsp");
			System.out.println("data deleted successfully..");
		}
		if(s.equals("edit")){
			String s2 = request.getParameter("id");
			int i3 = Integer.parseInt(s2);
			vo v3 = new vo();
			v3.setId(i3);
			dao d4 = new dao();
			List ls = d4.edit(v3);
			HttpSession session = request.getSession();
			session.setAttribute("data", ls);
			response.sendRedirect("edit.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String s2 = request.getParameter("flag");
		if(s2.equals("insert")){
		String title = request.getParameter("nt");
		String d1 = request.getParameter("nd");
		vo v3 = new vo();
		v3.setTitle(title);
		v3.setDescription(d1);
		dao d3 = new dao();
		d3.insert(v3);
		System.out.println("data inserted...");
		
	}
		if(s2.equals("update")){
			String s4 = request.getParameter("id_update");
			int i3 = Integer.parseInt(s4);
			String title1= request.getParameter("nt1");
			String d2 = request.getParameter("nd1");
			vo v4 = new vo();
			v4.setId(i3);
			v4.setTitle(title1);
			v4.setDescription(d2);
			dao d4 = new dao();
			d4.update(v4);
			System.out.println("data updated successfully..");
	
	}

	}
	
}

