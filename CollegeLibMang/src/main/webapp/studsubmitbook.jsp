<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Submit Book:</h2>

<form action="./controller/studsubmitbook" method="post">

<lable> Enter student id:</lable>
<input type="text" name="sid"/>
<br/>

<lable> Enter book id:</lable>
<input type="text" name="bid"/>
<br/>

<button type="submit">submit</button>
</form>
${msg}
</body>
</html>