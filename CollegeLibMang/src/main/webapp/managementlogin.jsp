<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="./controller/manglogin" method="post">

<table>

	<tr>
		<th>Enter managementID:</th>
		<td><input type="text" placeholder="ManagementID" name="mid"></td>
	</tr>
	<tr>
		<th>Enter password:</th>
		<td><input type="password" placeholder="password" name="mpwd"></td>
	</tr>
</table>
<button type="submit">Submit</button>
</form>
</body>
</html>