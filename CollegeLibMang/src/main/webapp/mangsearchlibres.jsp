<%@page import="in.kp.model.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
List<Book> books=(List<Book>)request.getAttribute("books");
%>
<table border="black">
<tr>
	<th>bid</th>
	<th>btitle</th>
	<th>bauthor</th>
	<th>bcategory</th>
</tr>	

<%
for(Book book:books){
%>
<tr>	
	<td><% out.print(book.getBid());%></td>
	<td><% out.print(book.getBtitle());%></td>
	<td><% out.print(book.getBauthor());%></td>
	<td><% out.print(book.getBcategory());%></td>
</tr>
<%
}

%>
</table>
</body>
</html>