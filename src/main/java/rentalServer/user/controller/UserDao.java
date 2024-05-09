package rentalServer.user.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import rentalServer.util.DBManager;


public class UserDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	// 싱글톤 생성
	private UserDao() {
		
	}
	
	private static UserDao instance = new UserDao();
	
	public static UserDao getInstance() {
		return instance;
	}
	
	public UserResponseDto findUserByIdAndPassword(String id, String password) {
		UserResponseDto user = null;
		
		try {
			conn = DBManager.getConnection();
			
			String sql = "SELECT id, name, email, telecom, phone FROM users WHERE id = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String name = rs.getString(2);
				String email = rs.getString(3);
				String telecom = rs.getString(4);
				String phone = rs.getString(5);
				
				user = new UserResponseDto(id, name, email,telecom,phone);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return user;
	}
	
	public UserResponseDto findUserByNameAndPhone(String name, String telecom, String phone) {
		UserResponseDto user = null;
		
		try {
			
			conn = DBManager.getConnection();
			
			String sql ="SELECT id, name, email, telecom, phone FROM users WHERE name=? AND telecom=? AND phone=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, telecom);
			pstmt.setString(3, phone);
			
			rs = pstmt.executeQuery();

			if(rs.next()) {
				String id = rs.getString(1);
				String email = rs.getString(3);
				
				user = new UserResponseDto(id, name, email, telecom, phone);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return user;
	}
	
	public String findUserByIdAndPhone(String id, String name, String telecom, String phone) {
		String password = null;
		try {
			
			conn = DBManager.getConnection();
			
			String sql ="SELECT password FROM users WHERE id=? AND name=? AND telecom=? AND phone=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, telecom);
			pstmt.setString(4, phone);
			
			rs = pstmt.executeQuery();

			if(rs.next()) {
				password = rs.getString(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return password;
	}
	
	public UserResponseDto createUser(UserRequestDto userDto) {
		
		try {
			conn = DBManager.getConnection();
			
			String sql = "INSERT INTO users(id,password,name,email,telecom,phone) "
					+ "Values (?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userDto.getId());
			pstmt.setString(2, userDto.getPassword());
			pstmt.setString(3, userDto.getName());
			
			String email = userDto.getEmail().equals("") ? null : userDto.getEmail();
			pstmt.setString(4, email);
			
			pstmt.setString(5, userDto.getTelecom());
			pstmt.setString(6, userDto.getPhone());
			
			pstmt.execute();
			
			return findUserByIdAndPassword(userDto.getId(),userDto.getPassword());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return null;
		
	}
	
	private User findUserById(String id) {
		User user = null;

		try {
			conn = DBManager.getConnection();

			String sql = "SELECT id, password, name, email, telecom, phone, reg_date, mod_date FROM users WHERE id=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				String password = rs.getString(2);
				String name = rs.getString(3);
				String email = rs.getString(4);
				String telecom = rs.getString(5);
				String phone = rs.getString(6);
				Timestamp regDate = rs.getTimestamp(7);
				Timestamp modDate = rs.getTimestamp(8);

				user = new User(id, password, name, email, telecom, phone, regDate, modDate);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return user;
	}
	
	public UserResponseDto updateUserPassword(UserRequestDto userDto, String newPassword) {
		UserResponseDto user = null;

		if (newPassword == null || newPassword.equals("")) {
			return user;
		}

		if (!userExists(userDto)) {
			return user;
		}

		try {
			conn = DBManager.getConnection();

			String sql = "UPDATE users SET password=? WHERE id=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, newPassword);
			pstmt.setString(2, userDto.getId());

			pstmt.execute();

			User userVo = findUserById(userDto.getId());
			user = new UserResponseDto(userVo);
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return user;
	}

	public UserResponseDto updateUserEmail(UserRequestDto userDto) {
		UserResponseDto user = null;

		if (!userExists(userDto)) {
			return user;
		}

		try {
			conn = DBManager.getConnection();

			String sql = "UPDATE users SET email=? WHERE id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userDto.getEmail());
			pstmt.setString(2, userDto.getId());

			pstmt.execute();

			user = findUserByIdAndPassword(userDto.getId(), userDto.getPassword());
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return user;
	}

	public UserResponseDto updateUserPhone(UserRequestDto userDto) {
		UserResponseDto user = null;

		if (!userExists(userDto)) {
			return user;
		}

		try {
			conn = DBManager.getConnection();

			String sql = "UPDATE users SET telecom=?, phone=? WHERE id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userDto.getTelecom());
			pstmt.setString(2, userDto.getPhone());
			pstmt.setString(3, userDto.getId());

			pstmt.execute();

			user = findUserByIdAndPassword(userDto.getId(), userDto.getPassword());
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return user;
	}
	
	public boolean deleteUser(UserRequestDto userDto) {
		if (!userExists(userDto)) {
			return false;
		}

		try {
			conn = DBManager.getConnection();
			String sql = "DELETE FROM users WHERE id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userDto.getId());

			pstmt.execute();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}

		return false;
	}
	
	public boolean userExists(UserRequestDto userDto) {
		return findUserByIdAndPassword(userDto.getId(), userDto.getPassword()) != null;
	}
	
}
