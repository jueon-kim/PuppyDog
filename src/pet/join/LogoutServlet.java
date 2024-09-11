package pet.join;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Logout.do")
public class LogoutServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false); // 기존 세션이 없을 경우 새 세션 생성하지 않도록 false로 설정
       // session.setAttribute("userName", userName); // 사용자 이름을 userName으로 세션에 저장


        if (session != null) {
        	session.removeAttribute("userName");
            response.sendRedirect("MainPage.jsp"); // 로그아웃 후 리다이렉트할 페이지
        }


    }
}