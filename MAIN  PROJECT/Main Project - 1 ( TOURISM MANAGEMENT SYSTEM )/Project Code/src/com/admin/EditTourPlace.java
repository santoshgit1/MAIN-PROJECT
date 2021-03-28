package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class EditTourPlace
 */
@WebServlet("/EditTourPlace")
public class EditTourPlace extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String placeId=request.getParameter("tid");
		String placeName=request.getParameter("tname");
		String placeAddress=request.getParameter("taddress");
		String placeArea=request.getParameter("tarea");
		String placeTags=request.getParameter("ttags");
		String placeDescription=request.getParameter("tdesc");
		
		try {
			int editTourInfo=DatabaseConnection.insertUpdateFromSqlQuery("update tblplaces set place_name='"+placeName+"',place_address='"+placeAddress+"',place_area='"+placeArea+"',place_tags='"+placeTags+"',place_description='"+placeDescription+"' where place_id='"+placeId+"'");
			if(editTourInfo>0) {
				response.sendRedirect("admin-tourist-places-view.jsp");
			}else {
				response.sendRedirect("admin-tourist-places-view.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
