<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="./controller/mangregister" method="post">
  
  <table>
  
  	<tr>
  		<th>Enter ManagementID:</th>
  		<td><input type="text" placholder="ManagementID" name="mid"></td>
  	</tr>
  	<tr>
  		<th>Enter ManagementName:</th>
  		<td><input type="text" placholder="ManagementName" name="mname"></td>
  	</tr>
  	<tr>
  		<th>Enter ManagementMail:</th>
  		<td><input type="email" placholder="ManagementMail" name="memail"></td>
  	</tr>
  	<tr>
  		<th>Enter Password:</th>
  		<td><input type="password" placholder="password" name="mpwd"></td>
  	</tr>
  </table>
 <button type="submit">submit</button>

</form>
${msg}
</body>
</html>