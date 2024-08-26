package com.faq;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FaqSubmitDButill {
	
	private static  boolean isSuccess ;
	//define database connection variables
	private static Connection con = null;
	private static Statement stmt = null;  
	private static ResultSet rs = null;
	
	//create a method to insert data into DB
	public static boolean InsertQuestion(String name,String Contact,String Question) {
		
		boolean Success =false;
		
		
		try {
			//create database connection
			con  = DBConnect.getConnection(); 
			stmt  = con.createStatement();
			
			String sql = "insert into faq values(0,'"+name+"','"+Contact+"','"+Question+"')";
            int rs = stmt.executeUpdate(sql);
            
            if (rs > 0) {
            	Success = true;
            }
            else {
            	Success = false;
            }
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return Success;
	}
	
	public static boolean updatefaq(String name,String Contact,String Question) {
		
		try {
			//create database connection
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="update faq set Mobile_number='"+Contact+"',Question='"+Question+"'where name='"+name+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			
			else {
				isSuccess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	
	public static boolean deletefaq(String name) {
		
		try {
			
			con=DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from faq where Name='"+name+"'";
			int r = stmt.executeUpdate(sql);
			
			if( r>0) {
				isSuccess = true;
				
			}
			
			else {
				isSuccess=false;
			}
			
			
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess; 
		
	}
	
public static List<Question> getquestions(){
		
		//int convertNumber = Integer.parseInt();
		
		ArrayList<Question> que = new ArrayList<>();//get values of java class and put in to arraylist
			
		try {
			//create database connection
			con  = DBConnect.getConnection(); 
			stmt  = con.createStatement();
			
			String sql = "select * from faq";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				 int number = rs.getInt(1);
				 String name = rs.getString(2);
				 String contact = rs.getString(3);
				 String question = rs.getString(4);
				
				 
				 Question q = new Question(number, name,contact,question);
				 que.add(q);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
			
		return que;
		
	}
}