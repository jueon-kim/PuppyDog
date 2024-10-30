package pet.join;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/join.do")
public class petJoin extends HttpServlet{

	private static final long serialVersionUID = 1L;
    private jdbcTest jdbcTestInstance = new jdbcTest(); // 중복 체크를 위한 jdbcTest 인스턴스 생성

    private boolean isUserIdDuplicate(String userId) throws SQLException {
        return jdbcTestInstance.isUserIdDuplicate(userId); // jdbcTest 인스턴스를 통해 메서드 호출
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if ("중복확인".equals(action)) {
            String userId = req.getParameter("user_id");
            boolean isDuplicate = false;

            try {
                isDuplicate = isUserIdDuplicate(userId); // 사용자 아이디 중복 확인
            } catch (SQLException e) {
                e.printStackTrace();
                resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "데이터베이스 오류가 발생했습니다."); // 에러 처리
                return;
            }

            // 응답으로 중복 여부 전송
            resp.setContentType("text/plain");
            resp.getWriter().write(String.valueOf(isDuplicate)); // "true" 또는 "false"를 반환
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json;charset=UTF-8"); 

        String action = req.getParameter("action");

        if ("중복확인".equals(action)) {
            handleDuplicateCheck(req, resp); // 중복 확인 메서드 호출
        } else if ("회원가입".equals(action)) {
            handleJoin(req, resp); // 회원가입 메서드 호출
        } else {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "잘못된 요청입니다.");
        }
    }

    private void handleDuplicateCheck(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String userId = req.getParameter("user_id");
        boolean isDuplicate;
        try {
            isDuplicate = isUserIdDuplicate(userId);
            resp.getWriter().write(String.valueOf(isDuplicate));
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "데이터베이스 오류가 발생했습니다.");
        }
    }

    private void handleJoin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user_id = req.getParameter("user_id");
        String user_name = req.getParameter("user_name");
        String user_pw = req.getParameter("user_pw");
        String userPhone1 = req.getParameter("user_phone1");
        String userPhone2 = req.getParameter("user_phone2");
        String userPhone3 = req.getParameter("user_phone3");
        String user_address = req.getParameter("user_address");
        String user_email = req.getParameter("user_email");
        String fullPhone = userPhone1 + "-" + userPhone2 + "-" + userPhone3;

        joinVO vo = new joinVO();
        vo.setUser_id(user_id);
        vo.setUser_name(user_name);
        vo.setUser_pw(user_pw);
        vo.setUser_phone(fullPhone);
        vo.setUser_address(user_address);
        vo.setUser_email(user_email);

        joinDao dao = joinDao.getInstance();
        int result = dao.insertJoin(vo);

        if (result == 1) {
            req.getSession().setAttribute("message", "회원가입 성공");
            resp.sendRedirect("userLogin.jsp");
        } else {
            req.setAttribute("message", "회원가입 실패");
            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
            dispatcher.forward(req, resp);
        }
    }
}
