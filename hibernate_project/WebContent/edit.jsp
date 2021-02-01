<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <title>edit page</title>
  </head>
  <body>
  <jsp:include page="base.jsp"></jsp:include>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:forEach var="i" items="${sessionScope.data}">
	<c:set var="id" value="${i.id}"></c:set>
	<c:set var="title" value="${i.title}"></c:set>
	<c:set var="description" value="${i.description}"></c:set>
</c:forEach>
<form action="container" method="POST">
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">Note Title</label>
	  <input type="text" class="form-control" id="exampleFormControlInput1" name="nt1" value="${title}" placeholder="enter your task here">
	</div>
	<div class="mb-3">
	  <label for="exampleFormControlTextarea1" class="form-label">Note Description</label>
	  <textarea class="form-control" id="exampleFormControlTextarea1" name="nd1"  
	  
	  rows="3">${description}</textarea>
	</div>
	<input type="hidden" value="${id}" name="id_update">
	<input type="hidden" name="flag" value="update">
	<button type="submit" style="background-color:blue;">Submit</button>
   </form>

   <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    -->
  </body>
</html>
