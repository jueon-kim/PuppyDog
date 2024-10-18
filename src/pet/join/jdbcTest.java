package pet.join;

import static org.junit.jupiter.api.Assertions.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.jupiter.api.Test;

class jdbcTest {

    // MySQL JDBC URL을 올바르게 작성
	private static final String URL = "jdbc:mysql://localhost:3306/puppyDog";  // your_database는 실제 DB 이름
    private static final String USER = "root";  // MySQL 사용자 이름
    private static final String PASSWORD = "kimjueon";  // MySQL 사용자 비밀번호

    // 1. 데이터 삽입 테스트
    @Test
    public void testInsert() throws SQLException {
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
            System.out.println("MySQL JDBC 연결 성공");
            assertNotNull(conn);

            String insertSql = "INSERT INTO user (user_id, user_name, user_pw, user_phone, user_address, user_email) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement insertStmt = conn.prepareStatement(insertSql)) {
                insertStmt.setString(1, "user123");
                insertStmt.setString(2, "John Doe");
                insertStmt.setString(3, "password123");
                insertStmt.setString(4, "010-1234-5678");
                insertStmt.setString(5, "Seoul, South Korea");
                insertStmt.setString(6, "john.doe@example.com");

                int rowsInserted = insertStmt.executeUpdate();
                assertEquals(1, rowsInserted, "1개의 행이 삽입되어야 합니다.");
                System.out.println("데이터 삽입 성공");
            }
        } catch (SQLException e) {
            fail("JDBC 연결 실패: " + e.getMessage());
        }
    }

   
    
    
    // 2. 삽입된 데이터 조회 테스트
    @Test
    public void testSelect() throws SQLException {
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
            String selectSql = "SELECT * FROM user WHERE user_id = ?";
            try (PreparedStatement selectStmt = conn.prepareStatement(selectSql)) {
                selectStmt.setString(1, "user123");
                try (ResultSet rs = selectStmt.executeQuery()) {
                    assertTrue(rs.next(), "삽입된 데이터가 조회되어야 합니다.");
                    System.out.println("데이터 조회 성공");

                    // 각 필드 값 확인
                    assertEquals("user123", rs.getString("user_id"));
                    assertEquals("John Doe", rs.getString("user_name"));
                    assertEquals("password123", rs.getString("user_pw"));
                    assertEquals("010-1234-5678", rs.getString("user_phone"));
                    assertEquals("Seoul, South Korea", rs.getString("user_address"));
                    assertEquals("john.doe@example.com", rs.getString("user_email"));

                    System.out.println("조회된 데이터 확인 성공");
                }
            }
        } catch (SQLException e) {
            fail("JDBC 연결 실패: " + e.getMessage());
        }
    }
    
  

    // 3. 삽입된 데이터 삭제 테스트
    @Test
    public void testDelete() throws SQLException {
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
            String deleteSql = "DELETE FROM user WHERE user_id = ?";
            try (PreparedStatement deleteStmt = conn.prepareStatement(deleteSql)) {
                deleteStmt.setString(1, "user123");
                int rowsDeleted = deleteStmt.executeUpdate();
                assertEquals(1, rowsDeleted, "1개의 행이 삭제되어야 합니다.");
                System.out.println("데이터 삭제 성공");

                // 삭제 후 데이터가 존재하는지 확인
                String selectSql = "SELECT * FROM user WHERE user_id = ?";
                try (PreparedStatement selectStmt = conn.prepareStatement(selectSql)) {
                    selectStmt.setString(1, "user123");
                    try (ResultSet rs = selectStmt.executeQuery()) {
                        assertFalse(rs.next(), "삭제된 데이터가 조회되지 않아야 합니다.");
                        System.out.println("삭제 후 데이터 조회 실패 확인");
                    }
                }
            }
        } catch (SQLException e) {
            fail("JDBC 연결 실패: " + e.getMessage());
        }
    }
}