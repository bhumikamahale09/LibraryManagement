package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.BookDao;
import com.entity.Book;

/**
 * Servlet implementation class AddBookServlet
 */
public class AddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private BookDao bookdao=new BookDao();
	
	
    public AddBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
		String title=request.getParameter("title");
		String author=request.getParameter("author");
		double price=Double.parseDouble(request.getParameter("price"));
		
		Book book=new Book(title,author,price);
		BookDao.save(book);
		
		boolean result=BookDao.save(book);
		if(!result)
		{
			System.out.println("Book added Successfully...!!!");
		}
		else
		{
			System.out.println("Error somthing went wrong..!!");
		}
		
		response.sendRedirect("booklist.jsp");
	}

}
