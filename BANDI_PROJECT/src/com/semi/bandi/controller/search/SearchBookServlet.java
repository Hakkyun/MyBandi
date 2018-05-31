package com.semi.bandi.controller.search;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.bandi.model.dao.search.SearchBookService;
import com.semi.bandi.model.vo.Book;

@WebServlet("/SearchBook")
public class SearchBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SearchBookServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String option = request.getParameter("searchBy");
		String getText = request.getParameter("searchText");
		
		ArrayList<Book> list = new SearchBookService().searchBook(option, getText);
		
		
		if(option.equals("totalSearch")) option="통합검색";			
		else if(option.equals("bookSearch")) option="도서명";
		else if(option.equals("authorSearch")) option="저자명";
		else if(option.equals("publisherSearch")) option="출판사명";
		
		System.out.println("검색어 : "+getText);
		System.out.println("검색종류 : "+option);
		request.setAttribute("option", option);
		request.setAttribute("getText", getText);
		
		ServletContext context = getServletContext();
		RequestDispatcher rq = context.getRequestDispatcher("/views/search/searchBook.jsp");
		rq.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}