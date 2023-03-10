<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="./controller/studregister">

<table>

<tr>
	<th>Enter StudentID:</th>
	<td><input type="text" placeholder="StudentID"  name="sid"></td>
</tr>
<tr>
	<th>Enter StudentName:</th>
	<td><input type="text" placeholder="StudentName"  name="sname"></td>
</tr>
<tr>
	<th>Enter StudentMail:</th>
	<td><input type="email" placeholder="StudentMail"  name="smail"></td>
</tr>
<tr>
	<th>Enter password:</th>
	<td><input type="password" placeholder="password" name="spwd"></td>
</tr>

</table>

<button type="submit">Submit</button>
</form>
${msg}
<%
	String val=request.getParameter("msg");
	if(val!=null)
	out.print(val);
	if(val!=null)
	if(val.equals("Student added successfully!")){
%>
	<p>Login here</p>
	<a href="../index.jsp">Login here</a>
<%} %>
</body>

</html>