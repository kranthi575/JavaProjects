<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Enter book details:</h2>
<form action="./controller/mangaddbooklib" type="post">
	<table>
		<tr>
			<th>Enter BookID:</th>
			<td><input type="text" name="bid"></td>
		</tr>
		<tr>
			<th>Enter BookTitle:</th>
			<td><input type="text" name="btitle"></td>
		</tr>
		<tr>
			<th>Enter BookAuthor:</th>
			<td><input type="text" name="bauthor"></td>
		</tr>
		<tr>
			<th>Enter BookCategory:</th>
			<td><input type="text" name="bcategory"></td>
		</tr>
	</table>
	<button type="submit">submit</button>
</form>
${msg}
</body>
</html>