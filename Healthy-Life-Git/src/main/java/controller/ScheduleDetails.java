package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;


/**
 * Servlet implementation class ScheduleDetails
 */
@WebServlet("/ScheduleDetails")
public class ScheduleDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScheduleDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("application/xml;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String scheduleName = request.getParameter("schedule");
        
        HttpSession session = request.getSession();
        User currentUser = (User) session.getAttribute("user");
        
        System.out.println(currentUser.getUsername());
        
        currentUser.getUserSchedule();
        System.out.println("collected");
        
        try {
                out.println(scheduleName);
        } finally {
            out.close();
        }
    }     

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        processRequest(request, response);
	}

}
