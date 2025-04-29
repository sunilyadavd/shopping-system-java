package com.app.ser;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;

import com.app.DAO.customerDAO;

@WebServlet("/ImageServlet")
@MultipartConfig(maxFileSize = 16177215)
public class ImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ImageServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String price = request.getParameter("price");
		String type = request.getParameter("type");

		// Input stream of the upload file
		InputStream in = null;
		String message = null;

		// Obtains the upload file
		// part in this multipart request
		Part filePart = request.getPart("photo");
		String fnm = "";

		if (filePart != null) {

			// Prints out some information
			// for debugging
			fnm = filePart.getSubmittedFileName();
			System.out.println(fnm);

			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			// Obtains input stream of the upload file
			in = filePart.getInputStream();
		}

		// Sends the statement to the
		// database server
		customerDAO dao = new customerDAO();

		int row = dao.uploadFile(fnm, price, type, in);
		if (row > 0) {
			message = "File uploaded and " + "saved into database";
		}
		System.out.println(message);
		response.sendRedirect("admin/uploadimg.jsp");
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
