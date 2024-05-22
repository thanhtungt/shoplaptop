package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
@WebServlet(urlPatterns= {"/member/cart"})
public class CartController extends HttpServlet {
;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//lấy giỏ hàng của người dùng từ sesion
		HttpSession httpSession = req.getSession();
		Object obj = httpSession.getAttribute("cart");
		
		  // Lấy tên đăng nhập từ session
		HttpSession session= req.getSession();
		if(session != null && session.getAttribute("account") != null) {
			User u=(User) session.getAttribute("account");
			req.setAttribute("username", u.getUsername());
		}
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/view/list-cart.jsp");
		dispatcher.forward(req, resp);
	}
}
