<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%//Note taker app in hibernate.. %>
<%//home page of application:- %>
<jsp:include page="base.jsp"></jsp:include>

<div class="container" style="margin-top:30px; height:500px;width:600px;backgroud-color:balck;">
	<img src="https://www.techtree.com/sites/default/files/styles/story_page_315_236/public/2014/3/notepad.jpg?itok=tREJ7hxo" height="300px" width="500px"/>
	<form action="addnotes.jsp">
	<h1 style="margin-left:40px;">START TAKING YOUR NOTES HERE</h1>
	<div class="container" style="text-align:center;margin-top:30px;">
		<button type="submit" style="height:30px;width:200px;background-color:blue;border-radius:12px;">Submit</button>
	</div>
	</form>
</div>

</body>
</html>