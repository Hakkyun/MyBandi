package com.semi.bandi.model.dao.search;

import static com.semi.bandi.template.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.semi.bandi.model.service.search.SearchBookDao;
import com.semi.bandi.model.vo.Book;

public class SearchBookService {

	public SearchBookDao dao;
	
	public SearchBookService(){
		 dao = new SearchBookDao();
	}
	
	public ArrayList<Book> searchBook(String option, String getText){
		Connection con = getInstance();
		ArrayList<Book> list = dao.searchBook(con, option, getText);
		
		close(con);
				
		return list;
	}
	
}
