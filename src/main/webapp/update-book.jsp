<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>

/* styles.css */
body {
    font-family: 'Arial', sans-serif;
    background-image: url('https://images.pexels.com/photos/1054218/pexels-photo-1054218.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); /* Replace with your background image */
    background-size: cover;
    background-position: center;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

 .container {
    background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background */
    padding: 2rem;
    border-radius: 10px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    text-align: center;
    width: 350px;
    backdrop-filter: blur(10px); /* Add blur effect */
}

h1 {
    color: #333;
    font-size: 1.5rem;
    margin-bottom: 1.5rem;
    font-weight: bold;
}

.form {
    display: flex;
    flex-direction: column;
    align-items: center;
}

label {
    font-weight: bold;
    margin-bottom: 0.5rem;
    font-size: 1.1rem;
}

 input[type="text"] {
    width: 100%;
    padding: 0.7rem;
    margin-bottom: 1rem;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 1rem;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

input[type="submit"],
input[type="reset"] {
    width: 120px;
    padding: 0.7rem;
    margin: 0.5rem;
    border: none;
    border-radius: 5px;
    background-color: #007bff;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s ease;
    font-size: 1rem;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

input[type="reset"] {
    background-color: #dc3545;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

input[type="reset"]:hover {
    background-color: #c82333;
}

.booklist-link {
    color: #007bff;
    text-decoration: none;
    font-weight: bold;
    margin-top: 1rem;
    display: inline-block;
    transition: color 0.3s ease;
    font-size: 1rem;
    
}

.booklist-link:hover {
    color: #0056b3;
}


</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update book</title>
</head>
<body>
	<div class="container">
	<h1>Update Book</h1>
	<form action="UpdateBookServlet" method="post" class="form">
	
		<input type="text" name="id" placeholder="Enter book id" required>
		<input type="text" name=title placeholder="Enter book title" required>
		<input type="text" name=author placeholder="Enter book author" required>
		<input type="text" name=price placeholder="Enter book price" required>	
			
		<input type="submit" value="update">
		<input type="reset" value="cancel">
	
	
	</form>
	
	</div>
</body>
</html>