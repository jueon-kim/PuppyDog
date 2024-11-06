# 프로젝트 소개 
* 개발 인원 : 1명
* 주요 기능
* 사용자 - 회원가입 및 로그인, 유효성 검사 및 중복 검사
* 유지보수 2024.10.31~

# 개요
* 미완성된 팀프로젝트를 개인프로젝트로 변경하여 제작 하였습니다.
* 기존 프로젝트 - [퍼피독_팀 공백.pptx](https://github.com/user-attachments/files/17588825/_.pptx)

# 개발 환경 
![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=openjdk&logoColor=white) ![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white) ![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white) ![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E) ![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white) ![Eclipse](https://img.shields.io/badge/Eclipse-FE7A16.svg?style=for-the-badge&logo=Eclipse&logoColor=white)

# 메인화면
![index](https://github.com/user-attachments/assets/0a38b787-6d07-4e12-a49b-589da986237a)


# 유효성 검사
![유효성검사](https://github.com/user-attachments/assets/212868e5-fc9e-4861-bdd3-f930fa72e4a6)
# 테스트 코드 일부 
'   		

    아이디 중복 체크
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
    } '

# ERD
<img width="203" alt="DB" src="https://github.com/user-attachments/assets/e56b815b-7f68-4726-a07f-34475a035007">


    
