package com.contact;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddContact
 */
@WebServlet("/AddContact")
public class AddContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=0;
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String message=request.getParameter("message");
		
		try {
			int addContact= DatabaseConnection.insertUpdateFromSqlQuery("insert into tblcontact(contact_id,name,email,phone,message) values ('"+id+"','"+name+"','"+email+"','"+phone+"','"+message+"')");
			if(addContact > 0) {
				response.sendRedirect("index.jsp");
			}else {
				response.sendRedirect("index.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
