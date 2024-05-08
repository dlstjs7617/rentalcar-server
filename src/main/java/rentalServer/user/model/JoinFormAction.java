package rentalServer.user.model;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rentalServer.user.controller.UserDao;
import rentalServer.user.controller.UserRequestDto;
import rentalServer.user.controller.UserResponseDto;

/**
 * Servlet implementation class JoinFormAction
 */
public class JoinFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinFormAction() {
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
		
		// sql순서대로 정리함
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String telecom = request.getParameter("telecom");
		String phone = request.getParameter("phone");
		
		// 검증
		boolean isValid = true;
		
		if(id == null || id.equals(""))
			isValid = false;
		else if(password == null || password.equals(""))
			isValid = false;
		else if(name == null || name.equals(""))
			isValid = false;
		else if(telecom == null || telecom.equals(""))
			isValid = false;
		else if(phone == null || phone.equals(""))
			isValid = false;
		
		if(isValid) {
			UserRequestDto userDto = new UserRequestDto(id, password, name, email, telecom, phone);
			
			UserDao userDao = UserDao.getInstance();
			UserResponseDto user = userDao.createUser(userDto);
			
			if(user == null) {
				System.err.println("user가 null입니다.");
				response.sendRedirect("/join");
			}else {
				System.out.println("user : " + user);
				response.sendRedirect("/login");
			}
			
		}else {
			response.sendRedirect("/join");
		}
		
	}

}
