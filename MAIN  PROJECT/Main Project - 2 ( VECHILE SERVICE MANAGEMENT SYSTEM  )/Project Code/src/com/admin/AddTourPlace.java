package com.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddTourPlace
 */
@WebServlet("/AddTourPlace")
public class AddTourPlace extends HttpServlet {
private final String UPLOAD_DIRECTORY = "F:/project-workspace/TouristGuideSystem/WebContent/upload/";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				String placeId=null;
				String placeName=null;
				String imageName=null;
				String placeAddress=null;
				String placeArea=null;
				String placeTags=null;
				String placeDescription=null;
				
				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						imageName = new File(item.getName()).getName();
						item.write(new File(UPLOAD_DIRECTORY + File.separator + imageName));
						
						FileItem tplaceId=(FileItem) multiparts.get(0);
						placeId=tplaceId.getString();
						System.out.println("placeId "+placeId);
						
						FileItem tplaceName = (FileItem) multiparts.get(1);
						placeName = tplaceName.getString();
						System.out.println("placeName "+placeName);
						
						FileItem tplaceAddress = (FileItem) multiparts.get(2);
						placeAddress = tplaceAddress.getString();	
						System.out.println("placeAddress "+placeAddress);
						
						FileItem tplaceArea = (FileItem) multiparts.get(3);
						placeArea = tplaceArea.getString();	
						System.out.println("placeArea "+placeArea);
						
						FileItem tplaceTags = (FileItem) multiparts.get(4);
						placeTags = tplaceTags.getString();	
						System.out.println("placeTags "+placeTags);
						
						FileItem tplaceDescription = (FileItem) multiparts.get(5);
						placeDescription = tplaceDescription.getString();
						System.out.println("placeDescription "+placeDescription);
						
					}
				}
				try {
					int id = 0;
					String imagePath = UPLOAD_DIRECTORY + imageName;
					System.out.println("imagePath "+imagePath);
					int i = DatabaseConnection.insertUpdateFromSqlQuery("insert into tblplaces (place_id,place_name,image_name,place_image_path,place_address,place_area,place_tags,place_description) values ('"+placeId+"','"+placeName+"','"+imageName+"','"+imagePath+"','"+placeAddress+"','"+placeArea+"','"+placeTags+"','"+placeDescription+"')");
					if (i > 0) {
						String success = "Place added successfully.";
						session.setAttribute("message", success);
						response.sendRedirect("add-tourist-place.jsp");
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
			} catch (Exception ex) {
				request.setAttribute("message", "Place Upload Failed due to " + ex);
			}

		} else {
			request.setAttribute("message", "Sorry this code only handles file upload request");
		}
		
	}

}
