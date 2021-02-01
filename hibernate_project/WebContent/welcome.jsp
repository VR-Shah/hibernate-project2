<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="base.jsp"></jsp:include>
<div class="container " style="margin-top:30px;padding:30px;">
<c:forEach var="i" items="${sessionScope.data}">
  
<div class="card mt-3" >
  <div class="container" style="height:30%;width:50%;">
  <img class="card-img-top mt-5" src="https://www.techtree.com/sites/default/files/styles/story_page_315_236/public/2014/3/notepad.jpg?itok=tREJ7hxo"  height="30%" width="50%" alt="Card image cap">
  </div>
  <div class="card-body" style="text-align:center;">
    <h5 class="card-title">${i.title}</h5>
    <p class="card-text">
    ${i.description}</p>
    <a href="container?flag=edit&id=${i.id}" class="btn btn-primary">Edit</a>
    <a href="container?flag=delete&id=${i.id}" class="btn btn-primary">Delete</a>
    
 </div>
  


</div>
</c:forEach>
</div>
</body>
</html>