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
<script language="javascript" src="script/TV20.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function t(key,parentkey){
		document.forms["form"].pid.value = key;
}
</script>
</head>
<body>
<form name="form" action="categoryadd.jsp" method="post">
	<input type="hidden" name="action" value="add">
	<table align="center" border="1" >	
	   <tr><td id="show" colspan=2></td></tr>
		<tr>
			<td>pid</td>
			<td>
				<input type="text" name="pid" value="" readonly>
			</td>
		</tr>
		<tr>
			<td>类别名称</td>
			<td>
				<input type="text" name="name">
			</td>
		</tr>
		<tr>
			<td>类别描述</td>
			<td>
				<input type="textarea"  name="descr" cols=40 rows=8>
			</td>
		</tr>
		<tr>
		<td colspan=2 align="center"><input type="submit" value="提交"></td>
		</tr>
	</table>
</form>
<script language="javascript">
	<!--
	addNode(-1,0,"所有类别","images/top.gif");
	<%
	for(Iterator <Category> it = categories.iterator(); it.hasNext();){
	    Category c = it.next();
	%>
	    addNode(<%= c.getPid()%>,<%= c.getId()%>,"<%=c.getName()%>","images/top.gif");
	<%
	}   
	%>
	showTV();
	addListener("click","t");
	-->
</script>		
</body>

</html>