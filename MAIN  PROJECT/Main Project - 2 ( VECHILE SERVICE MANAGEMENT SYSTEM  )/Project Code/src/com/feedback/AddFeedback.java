package com.feedback;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddFeeback
 */
@WebServlet("/AddFeedback")
public class AddFeedback extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fid=request.getParameter("fid");
		String feedback=request.getParameter("feedback");
		HttpSession session=request.getSession();
		try {
			int addFeedback=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblfeedback(fid,feedback,uname)values('"+fid+"','"+feedback+"','"+session.getAttribute("uname")+"')");
			if(addFeedback>0) {
				response.sendRedirect("user-feedback.jsp");
			}else {
				response.sendRedirect("user-feedback.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
