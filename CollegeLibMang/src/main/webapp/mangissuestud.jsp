<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Issuing book to student:</h2>
<form action="./controller/mangissuebookstud" method="post">
	<table>
		<tr>
			<th>Enter sid:</th>
			<td><input type="text" name="sid"></td>
		</tr>
		<tr>
			<th>Enter bid:</th>
			<td><input type="text" name="bid"></td>
		</tr>
	</table>
	<button type="submit">Submit</button>
</form>
${msg}
</body>
</html>