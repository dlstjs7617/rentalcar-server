package rentalServer.user.model;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rentalServer.user.controller.UserDao;
import rentalServer.user.controller.UserResponseDto;

/**
 * Servlet implementation class FindUserIdAction
 */
public class FindUserPasswordAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindUserPasswordAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String telecom = request.getParameter("telecom");
		String phone = request.getParameter("phone");
		
		boolean isValid = true;
		if(id == null || id.equals(""))
			isValid = false;
		else if(name == null || name.equals(""))
			isValid = false;
		else if(telecom == null || telecom.equals(""))
			isValid = false;
		else if(phone == null || phone.equals(""))
			isValid = false;
		
		if(isValid) {
			
			UserDao userDao = UserDao.getInstance();
			String password = userDao.findUserByIdAndPhone(id, name, telecom, phone);
			
			
			if(password == null) {
				System.err.println("password가 null입니다.");
				response.sendRedirect("/find_Pw");
			}else {
				request.setAttribute("password", password);

		        // JSP 페이지로 포워딩
		        RequestDispatcher dispatcher = request.getRequestDispatcher("/find_Pw");
		        dispatcher.forward(request, response);
			}
			
		}else {
			System.err.println("false임");
			response.sendRedirect("/find_Pw");
		}
	}

}
