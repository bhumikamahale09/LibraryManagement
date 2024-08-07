package com.Dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.configuration.HibernateConfi;
import com.entity.Book;

public class BookDao {

	public static boolean save(Book book)
	{
		//Transaction transaction=null;
		Session session=HibernateConfi.getSessionFactory().openSession();
		Transaction transaction =session.beginTransaction();
		session.save(book);
		transaction.commit();
		session.close();
		return false;
	}
	
	public static List<Book> getbooks()
	
	{
		Session session=HibernateConfi.getSessionFactory().openSession();
		return session.createQuery("From Book",Book.class).list();
		
	}

	public static boolean updateBook(Book book) {
		
		Session session=HibernateConfi.getSessionFactory().openSession();
		Transaction transaction =session.beginTransaction();
		session.update(book);
		transaction.commit();
		session.close();
		return false;
		
	}

	public void deleteBook(int bid) {
		
		Transaction transaction=null;
		Session session=HibernateConfi.getSessionFactory().openSession();
		transaction=session.beginTransaction();
		Book book=session.get(Book.class, bid);
		
		if(book!=null)
		{
			session.delete(book);
			System.out.println("book is deleted ....!");
			
		}

		transaction.commit();
		
	}
}
