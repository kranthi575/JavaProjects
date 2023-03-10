<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Select options:</h2>
<form action="./controller/mangsearchbooklib" method="post">
<section >
	<select name="attribute">
		<option  value="bid">bid</option>
		<option  value="btitle">btitle</option>
		<option value="bauthor">bauthor</option>
		<option value="bcategory">bcategory</option>
	</select>	
	<input type="text" name="value"/>
</section>
<button type="submit">submit</button>
</form>
</body>
</html>