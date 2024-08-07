package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.BookDao;
import com.entity.Book;


public class UpdateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		int id=Integer.parseInt(request.getParameter("id"));
		String title=request.getParameter("title");
		String author=request.getParameter("author");
		double price=Double.parseDouble(request.getParameter("price"));
		
		Book book=new Book(id,title,author,price);
		BookDao.updateBook(book);
		response.sendRedirect("booklist.jsp");
		
		
	}

}
