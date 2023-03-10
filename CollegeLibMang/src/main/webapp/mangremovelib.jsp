<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Remove operation</h2>
<form action="./controller/mangremovebooklib" method="post">
<label>Enter BookID to remove:</label>
<input type="text" name="bid"></input>
<br/>
<button type="submit">submit</button>
</form>
${msg}
</body>
</html>