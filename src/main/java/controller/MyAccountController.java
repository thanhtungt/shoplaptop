package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import model.User;
import service.UserService;
import service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/member/myaccount" })
public class MyAccountController extends HttpServlet {
	UserService userService = new UserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Get session username
		HttpSession session= req.getSession();
		if(session != null && session.getAttribute("account") != null) {
			User u=(User) session.getAttribute("account");
			req.setAttribute("username", u.getUsername());
			}
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/view/myaccount.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String id = "";
		User user = new User();
		String id = req.getParameter("id"); 
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);

		try {
			List<FileItem> items = servletFileUpload.parseRequest(req);
			for (FileItem item : items) {
				if (item.getFieldName().equals("id")) {
					id = item.getString();
					user.setId(Integer.parseInt(item.getString()));
				} else if (item.getFieldName().equals("email")) {
					user.setEmail(item.getString());
				} else if (item.getFieldName().equals("username")) {
					user.setUsername(item.getString());
				} else if (item.getFieldName().equals("password")) {
					user.setPassword(item.getString());
				}
				
				else if (item.getFieldName().equals("address")) {
					user.setAddress(item.getString());
				}
				
				else if (item.getFieldName().equals("phone")) {
					user.setPhone(item.getString("phone"));
				}
				else if (item.getFieldName().equals("role")) {
					user.setRoleId(Integer.parseInt(item.getString()));
				}
				
				else if (item.getFieldName().equals("avatar")) {
					if (item.getSize() > 0) {// neu co file d
						final String dir = "D:/STUDY2023/Ky Fall 2023/upload";
						String originalFileName = item.getName();
						int index = originalFileName.lastIndexOf(".");
						String ext = originalFileName.substring(index + 1);
						String fileName = System.currentTimeMillis() + "." + ext;
						File file = new File(dir + "/" + fileName);
						item.write(file);

						user.setAvatar(fileName);
					} else {
						user.setAvatar(null);
					}
				}
			}

			userService.edit(user);
			
			User u = userService.get(Integer.parseInt(id));
			HttpSession session = req.getSession(true);
			 session.setAttribute("account", u);

			resp.sendRedirect(req.getContextPath() + "/member/myaccount");
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			resp.sendRedirect(req.getContextPath() + "/member/myaccount");
		}

	}
}
