package pet.join;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.jsp.jstl.tlv.ScriptFreeTLV;


public class joinDao {
	public joinDao() {

	}

	private static joinDao instance = new joinDao();

	public static joinDao getInstance() {
		return instance;
	}

    public Connection getConnection() throws Exception {
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/puppyDog?useUnicode=true&characterEncoding=utf-8";
//        Connection conn = DriverManager.getConnection(url, "username", "password");

        String username = "root"; // MySQL 사용자 이름
        String password = "kimjueon"; // MySQL 암호

        try {
        	Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);

            System.out.println("연결성공");
        } catch (SQLException e) {

            e.printStackTrace(); // 연결 오류 처리
            System.out.println("연결실패");
        }
        return conn;
    }


	// 회	===========	원	============	가	==============	입
    public int insertJoin(joinVO vo) {
        int result = -1;

        Connection conn = null;
        PreparedStatement checkStmt = null;
        PreparedStatement insertStmt = null;
        ResultSet rs = null;

        String checkQuery = "SELECT COUNT(*) FROM user WHERE user_id = ?";
        String insertQuery = "INSERT INTO user (user_id, user_name, user_pw, user_phone, user_address, user_email) VALUES (?, ?, ?, ?, ?, ?)";

        try {
            conn = getConnection();

            // 아이디 중복 체크
            checkStmt = conn.prepareStatement(checkQuery);
            checkStmt.setString(1, vo.getUser_id());
            rs = checkStmt.executeQuery();

            if (rs.next() && rs.getInt(1) > 0) { 
                System.out.println("아이디가 이미 존재합니다.");
                return 0; // 아이디 중복 시 0을 반환
            }

            // 중복이 없을 경우 데이터 삽입
            insertStmt = conn.prepareStatement(insertQuery);
            insertStmt.setString(1, vo.getUser_id());
            insertStmt.setString(2, vo.getUser_name());
            insertStmt.setString(3, vo.getUser_pw());
            insertStmt.setString(4, vo.getUser_phone());
            insertStmt.setString(5, vo.getUser_address());
            insertStmt.setString(6, vo.getUser_email());

            result = insertStmt.executeUpdate(); // 삽입 성공 시 영향받은 행 수 반환

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (checkStmt != null) checkStmt.close();
                if (insertStmt != null) insertStmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return result;
    }

	
// ========로 ===============그 ============== 인
	public boolean LoginCheck(String user_id, String user_pw) throws Exception {
		boolean result = false;

		  try (Connection conn = getConnection();
			         PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM user WHERE user_id=? AND user_pw=?")) {

			        pstmt.setString(1, user_id);
			        pstmt.setString(2, user_pw);

			        ResultSet rs = pstmt.executeQuery();
			        result = rs.next();

			    } catch (SQLException e) {
			        e.printStackTrace();
			    }

			    return result;
			}
// ========아	=========이=========디 ========출========력
	public String getUserName(String user_id)throws Exception{
		String userName = null;

		try (
			Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement("SELECT user_name FROM user WHERE user_id=?")) {

			pstmt.setString(1, user_id);
			ResultSet rs =pstmt.executeQuery();

			if(rs.next()) {
				userName = rs.getString("user_name");
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
		return userName;
	}




	}



