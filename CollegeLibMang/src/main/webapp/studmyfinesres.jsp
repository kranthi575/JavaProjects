<%@page import="java.util.List"%>
<%@page import="in.kp.model.StudBookTracker"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>${msg}</h2>
<%
List<StudBookTracker> books=(List<StudBookTracker>)request.getAttribute("studbooktrace");
int totalfine=0;
%>
<table border="black">
<tr>
	<th>sid</th>
	<th>bid</th>
	<th>borrowdate</th>
	<th>submitdate</th>
	<th>fine</th>
</tr>	

<%
for(StudBookTracker book:books){
%>
<tr>
	<td><% out.print(book.getSid());%></td>	
	<td><% out.print(book.getBid());%></td>
	<td><% out.print(book.getBorrowdate());%></td>
	<td><% out.print(book.getSubmitdate());%></td>
	<td><% out.print(book.getFine());
			totalfine=totalfine+book.getFine();
		%></td>
</tr>
<%
}

%>
</table>
<br/>
<h2><%out.print("total fine:"+totalfine); %></h2>
</body>
</html>