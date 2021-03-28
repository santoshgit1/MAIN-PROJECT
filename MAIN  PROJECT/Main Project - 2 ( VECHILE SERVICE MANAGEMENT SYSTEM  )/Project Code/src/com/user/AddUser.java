package com.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algorithm.AES;
import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	final String secretKey = "%@ajdhdklddf";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uid = request.getParameter("uid");
		String fname = request.getParameter("fname");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String address = request.getParameter("address");
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		String[] answer = request.getParameterValues("answer1");

		String encryptUpass = AES.encrypt(upass, secretKey);
		int questionId=101;

		try {
			int addUser = DatabaseConnection.insertUpdateFromSqlQuery(
					"insert into tbluser(user_id,user_full_name,user_email,user_mobile,user_address,uname,upass)values('"
							+ uid + "','" + fname + "','" + email + "','" + mobile + "','" + address + "','" + uname
							+ "','" + encryptUpass + "')");
			for (String questionAnswer : answer) {
				int addQuestionAnswer = DatabaseConnection
						.insertUpdateFromSqlQuery("insert into tbluserquestionanswer(user_id,question_id,answer)values('" + uid
								+ "','"+questionId+"','" + questionAnswer + "')");
				questionId++;
			}
			if (addUser > 0) {
				response.sendRedirect("user-register.jsp");
			} else {
				response.sendRedirect("user-register.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
