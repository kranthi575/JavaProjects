package in.kp.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UtilLib {
	
	public static boolean checkStudID(String sid) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sqlQuery=null;
		ResultSet resultSet=null;
		String msg=null;
		try {
			conn=JDBCUtil.getConnection();
			String sqlQuey="select sid from college_lib_mang.student where sid=?";
			if(conn!=null) {
				pstmt=conn.prepareStatement(sqlQuey);
				pstmt.setString(1, sid);
				resultSet=pstmt.executeQuery();
				System.out.println(resultSet);
				System.out.println("checkStudID...");
				
				if(!resultSet.next()) {
					System.out.println("chkStud null");
					return false;
				}else
					return true;
			
				}
	
		}catch(SQLException se) {
			se.printStackTrace();
		}catch(ClassNotFoundException ce) {
			ce.printStackTrace();
		}
		
	
		
		return true;
	}

	public static boolean checkBookID(String bid) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sqlQuery=null;
		ResultSet resultSet=null;
		String msg=null;
		try {
			conn=JDBCUtil.getConnection();
			String sqlQuey="select bid from college_lib_mang.book where bid=?";
			if(conn!=null) {
				pstmt=conn.prepareStatement(sqlQuey);
				pstmt.setString(1, bid);
				resultSet=pstmt.executeQuery();
				if(!resultSet.next()) {
					System.out.println("chkBook null");
					return false;
				}else
					return true;
			
				
				
			}
		}catch(SQLException se) {
			se.printStackTrace();
		}catch(ClassNotFoundException ce) {
			ce.printStackTrace();
		}
		
	
		
		return false;
	}
	
	public static boolean checkStudBookCount(String sid) {
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sqlQuery=null;
		ResultSet resultSet=null;
		String msg=null;
		try {
			conn=JDBCUtil.getConnection();
			String sqlQuey="select count(sid) from college_lib_mang.studentbooktracker where sid=? and submitdate is null;";
			if(conn!=null) {
				pstmt=conn.prepareStatement(sqlQuey);
				//pstmt.setString(1, null);
				pstmt.setString(1, sid);
				resultSet=pstmt.executeQuery();
				if(resultSet.next()) {
					System.out.println(resultSet.toString());
					System.out.println("Count:"+resultSet.getInt(1));
					if(resultSet.getInt(1) < 3)
						return false;
					else
						return true;
					
				}else
					return true;
			
				
				
			}
		}catch(SQLException se) {
			se.printStackTrace();
		}catch(ClassNotFoundException ce) {
			ce.printStackTrace();
		}
		
	
		
		return true;
	}
	public static boolean checkAlreadySubmitted(String sid,String bid) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sqlQuery=null;
		ResultSet resultSet=null;
		String msg=null;
		try {
			conn=JDBCUtil.getConnection();
			String sqlQuey="select submitdate from college_lib_mang.studentbooktracker where sid=? and bid=?;";
			if(conn!=null) {
				pstmt=conn.prepareStatement(sqlQuey);
				pstmt.setString(1, sid);
				pstmt.setString(2, bid);
				resultSet=pstmt.executeQuery();
				System.out.println("chking submitdate");
				if(resultSet.next()) {
					System.out.println("chking submitdate");
					if(resultSet.getDate(1) != null)
					return true;
				}else
					return false;
			
				
				
			}
		}catch(SQLException se) {
			se.printStackTrace();
		}catch(ClassNotFoundException ce) {
			ce.printStackTrace();
		}
		
	
		
		return false;
	}

}
