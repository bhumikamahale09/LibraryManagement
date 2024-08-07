<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
html {
  background-color: #10151B;
  background: url(https://images.pexels.com/photos/7244562/pexels-photo-7244562.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1) no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

body {
  font-family: "Oswald", sans-serif;
  -webkit-font-smoothing: antialiased;
  font-smoothing: antialiased;
}

h1 {
  line-height: .95;
  color: #F2FE04;
  font-weight: 800;
  font-size: 120px;
  text-transform: uppercase;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  pointer-events: none;
}


.btn {
  margin: 0 auto;
  width: 400px;
  height: 73px;
  padding: 6px 0 0 3px;
  border: 5px solid #19B2B5;
  border-radius: 2px;
  background: none;
  font-size: 16px;
  line-height: 54px;
  color: #fff;
  letter-spacing: .25em;
  text-decoration: none;
  font-weight: 600;
  text-transform: uppercase;
  vertical-align: middle;
  text-align: center;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  -webkit-transition: background .4s, color .4s;
  transition: background .4s, color .4s;
  cursor: pointer;
  
}

.btn:hover {
  background: white;
  color: white;
 
}
.button-link {
            display: inline-block;
            padding: 6px 16px;
            font-size: 20px;
            color: white;
            background-color: #19B2B5;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            width: 350px;
        }
        
        .button-link:hover {
            background-color: #05EBFA;
        }


</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<div align="center">
	
	<h1 >Welcome To Library Management</h1>
	
	<br>
	</div>
	<div class="btn">
	<a href="add-book.jsp" class="button-link">Go to My Library >>>></a>
	
	</div>
	
	
</body>
</html>