<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="com.bjsxt.shopping.User" %>
<%
User u = (User)session.getAttribute("user");
if(u==null){
	response.sendRedirect("login.jsp");//如果是直接输入的地址，则重定向到登录页面
    return;
}
%>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
    <a href="userModify.jsp">修改个人信息</a>
</body>
</html>