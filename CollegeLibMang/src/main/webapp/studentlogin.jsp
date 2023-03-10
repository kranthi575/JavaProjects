<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="login-page">

<form method="post" action="./controller/studlogin">

<table>

<tr>
	<th>Enter StudentID:</th>
	<td><input type="text" placeholder="StudentID"  name="sid"></td>
</tr>
<tr>
	<th>Enter password:</th>
	<td><input type="password" placeholder="password" name="spwd"></td>
</tr>

</table>

<button type="submit">Submit</button>
</form>

</div>
</body>
</html>