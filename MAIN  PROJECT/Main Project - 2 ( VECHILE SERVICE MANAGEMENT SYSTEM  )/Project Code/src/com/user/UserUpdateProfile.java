package com.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class UserUpdateProfile
 */
@WebServlet("/UserUpdateProfile")
public class UserUpdateProfile extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String fname = request.getParameter("fname");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String address = request.getParameter("address");
		HttpSession hs = request.getSession();

		try {

			int updateUserProfile = DatabaseConnection.insertUpdateFromSqlQuery("update tbluser set user_full_name='"
					+ fname + "',user_email='" + email + "',user_mobile='" + mobile + "',user_address='" + address
					+ "' where uname='" + hs.getAttribute("uname") + "'");
			if (updateUserProfile > 0) {
				response.sendRedirect("user-update-profile.jsp");
			} else {
				response.sendRedirect("user-update-profile.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
