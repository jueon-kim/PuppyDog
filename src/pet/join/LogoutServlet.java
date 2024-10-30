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
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();  // 세션 무효화
            }
            response.sendRedirect(request.getContextPath() + "/index.jsp");  // 리다이렉트
        }
    }