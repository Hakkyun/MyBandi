package com.semi.bandi.model.service.search;

import static com.semi.bandi.template.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.semi.bandi.model.vo.Book;

public class SearchBookDao {

	private Properties prop;
	
	public SearchBookDao(){
		prop = new Properties();
		String filename = SearchBookDao.class.getResource("/config/search/searchBook.properties").getPath();
		
		try {
			prop.load(new FileReader(filename));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Book> searchBook(Connection con, String option, String getText) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<Book> list = null;
		String dynamicSQL = "";
		
		if(option.equals("totalSearch")){
			dynamicSQL = " WHERE TITLE LIKE '%'|| "+getText+" ||'%'"
					+ " OR WRITER_NAME LIKE '%'|| "+getText+" ||'%'"
					+ " OR PUBLISHER LIKE '%'|| "+getText+" ||'%'";
		} else if(option.equals("bookSearch")){
			dynamicSQL = " WHERE TITLE LIKE '%'|| "+getText+" ||'%'";
		} else if(option.equals("authorSearch")){
			dynamicSQL = " WHERE WRITER_NAME LIKE '%'|| "+getText+" ||'%'";
		} else if(option.equals("publisherSearch")){
			dynamicSQL = " WHERE PUBLISHER LIKE '%'|| "+getText+" ||'%'";
		}
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(prop.getProperty("searchBook")+dynamicSQL);
			
			list = new ArrayList<Book>();
			
			while(rset.next()){
				Book book = new Book();
				
				book.setmBook_UID(rset.getInt("ISBN"));
				book.setmTitle(rset.getString("TITLE"));
				book.setmPrice(rset.getInt("PRICE"));
				
				list.add(book);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

}
