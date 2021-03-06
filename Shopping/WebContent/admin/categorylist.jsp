<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="java.sql.*,com.bjsxt.shopping.*,java.util.*" %>
<%@ include file="_SessionCheck.jsp" %>
<%
//get all users
List<Category> categories = Category.getCategories();

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
    <table border="1" align="center">
        <tr>
            <td>ID</td>
            <td>PID</td>
            <td>Name</td>
            <td>Grade</td>
        </tr>
        <%
        for(Iterator<Category> it = categories.iterator();it.hasNext();){
            Category c = it.next();
            String preStr = "";
            for(int i=1; i<c.getGrade();i++){
            	preStr += "----";
            }
        %>
        <tr>
            <td><%=c.getId() %></td>
            <td><%=c.getPid() %></td>
            <td><%=preStr + c.getName() %></td>
            <td><%=c.getGrade() %></td>
            <td>
                <a href="categoryadd.jsp?pid=<%= c.getId()%>" target="detail">添加子类别</a>
                &nbsp;
                <a href="categorydelete.jsp?id=<%=c.getId()%>&pid=<%=c.getPid()%>" target="detail">删除</a>
                &nbsp;
                <%if(c.isLeaf()){ %>
                <a href="productadd.jsp?categoryid=<%= c.getId()%>">在该类别下添加商品</a>
                <%} %>
                
            </td>
        </tr>
        <%
        }
        %>
    </table>
</body>
</html>