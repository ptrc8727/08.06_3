<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="heroku_3.LoginDao"%>  
<jsp:useBean id="obj" class="heroku_3.LoginBean"></jsp:useBean>  
  
<jsp:setProperty property="*" name="obj"/>

<%  
boolean status=LoginDao.validate(obj);  
if(status){  
out.println("You r successfully logged in");  
session.setAttribute("session","TRUE");  
}  
else  
{  
out.print("Sorry, email or password error");  
%>  
<jsp:include page="index.jsp"></jsp:include>  
<%  
}  
%>  

<a href="index.jsp">home</a>

</body>
</html>