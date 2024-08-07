<%@page import="java.util.*" %>
<%@page import="com.entity.Book" %>
<%@page import="com.Dao.BookDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<style>
        body {
            font-family: Georgia ,serif;
            background: url('https://images.pexels.com/photos/68763/pexels-photo-68763.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1') no-repeat center center fixed;
            background-size: cover;
            color: #660000;
        }

        h1 {
            color: white;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.9);
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #45a049;
        }

        .container {
            text-align: center;
        }
        .delete-btn{
        
        	background-color: #e74c3c;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .delete-btn:hover {
            background-color: #c0392b;
        }
    </style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>book list</title>
</head>
<body>
	<div align="center">
		<h1>Book List</h1>
		<table border="1">
		
			<tr>
			<th>Book Id</th>
			<th>Title</th>
			<th>Author</th>
			<th>Price</th>
			<th>Action</th>
			</tr>
			<%
			BookDao bookDao=new BookDao();
			List<Book> books=bookDao.getbooks();
			for(Book book : books){
			%>
			
				<tr>
					<td><%=book.getBid() %></td>
					<td><%=book.getTitle() %></td>
					<td><%=book.getAuthor() %></td>
					<td><%=book.getPrice() %></td>
				<td>
                        <form action="DeleteServlet" method="get" >
                            <input type="hidden" name="bid" value="<%= book.getBid() %>"/>
                            <input type="submit" class="delete-btn" value="Delete"/>
                        </form>
                    </td>
				</tr>
			<%} %>
			
		</table>
	
	<a href="add-book.jsp">Add Book</a>
	
	
	</div>
	 <script>
        function deleteBook(bookId) {
            if (confirm('Are you sure you want to delete this book?')) {
                // Redirect to a servlet or endpoint to handle deletion
                window.location.href = 'delete-book?bid=' + bookId;
            }
        }
    </script>

</body>
</html>