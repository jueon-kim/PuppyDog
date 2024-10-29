package pet.join;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.jupiter.api.Test;

class jdbcTest {

    // MySQL JDBC URL을 올바르게 작성
	private static final String URL = "jdbc:mysql://localhost:3306/puppyDog";  // your_database는 실제 DB 이름
    private static final String USER = "root";  // MySQL 사용자 이름
    private static final String PASSWORD = "kimjueon";  // MySQL 사용자 비밀번호
   
 // 아이디 중복 체크 메서드 추가
    public boolean isUserIdDuplicate(String userId) throws SQLException {
        String checkQuery = "SELECT COUNT(*) FROM user WHERE user_id = ?";
        
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement checkStmt = conn.prepareStatement(checkQuery)) {
            
            checkStmt.setString(1, userId);
            ResultSet rs = checkStmt.executeQuery();
            
            if (rs.next() && rs.getInt(1) > 0) {
                System.out.println("아이디가 이미 존재합니다.");
                return true; // 중복된 아이디가 있는 경우 true 반환
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new SQLException("아이디 중복 체크 중 오류 발생: " + e.getMessage());
        }
        
        return false; // 중복되지 않은 경우 false 반환
    }

    // 1. 데이터 삽입 테스트
    @Test
    public void testInsert() throws SQLException {
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
            System.out.println("MySQL JDBC 연결 성공");
            assertNotNull(conn);

            // 1. 중복 체크 쿼리
            String insertSql = "INSERT INTO user (user_id, user_name, user_pw, user_phone, user_address, user_email) VALUES (?, ?, ?, ?, ?, ?)";

            // 2. 중복이 없으면 삽입 쿼리 실행
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
    
    @Test
    public void testUserIdDuplicate() throws SQLException {
        jdbcTest jdbcTestInstance = new jdbcTest();

        boolean isDuplicate = jdbcTestInstance.isUserIdDuplicate("user123");
        assertTrue(isDuplicate, "아이디가 중복되어야 합니다."); // 중복인 경우

        boolean isNotDuplicate = jdbcTestInstance.isUserIdDuplicate("newUser456");
        assertFalse(isNotDuplicate, "아이디가 중복되지 않아야 합니다."); // 중복이 아닌 경우
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