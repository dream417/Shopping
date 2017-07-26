<%@page import="java.util.Iterator"%>
<%@page import="com.bjsxt.shopping.ProductManager"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.*"%>
<%@page import="com.bjsxt.shopping.Product"%>
<%@page import="com.bjsxt.shopping.Category"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ include file="_SessionCheck.jsp" %> 

<%
request.setCharacterEncoding("GB18030");
String action = request.getParameter("action");

List<Category> categories = Category.getCategories();

if(action != null && action.equals("complexsearch")){
	%>
	<jsp:forward page="complexsearchresult.jsp"></jsp:forward>
	<%
}

if(action != null && action.equals("simplesearch2")){
    %>
    <jsp:forward page="simplesearchresult.jsp"></jsp:forward>
    <%
}
%>
  
<!DOCTYPE html PUBLIC "-//W3C//DT D HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<script type="text/javascript">
     function checkdata(){
    	with(document.forms["complex"]){
    		if(lownormalprice.value == null || lownormalprice.value == ""){
    			  lownormalprice.value = -1;	
    		}
    		if(highnormalprice.value == null || highnormalprice.value == ""){
    			highnormalprice.value = -1;  
            }
            if(lowmemberprice.value == null || lowmemberprice.value == ""){
            	lowmemberprice.value = -1;  
            }
            if(highmemberprice.value == null || highmemberprice.value == ""){
            	highmemberprice.value = -1;  
            }            
    	}
    	 //window.parent.man.document.location.reload();
     }
</script>
</head>
<body>
    <center>简单搜索</center>
    <form action="productsearch.jsp" method="post">
        <input type="hidden" name="action" value="simplesearch">
                        类别：<select></select>
                        关键字：<input type="text" name="keyword">
        <input type="submit" value="简单搜索">
    </form>
    <br>
    <center>第二种搜索方法</center>
    <form action="productsearch.jsp" method="post">
        <input type="hidden" name="action" value="simplesearch2">
                        类别：
        <br>
        <%
        for(Iterator<Category> it=categories.iterator();it.hasNext();){
             Category c = it.next();
             String prestr = "";
             for(int i=1; i<c.getGrade();i++){
                 prestr += "--";
             }
             if(c.isLeaf()){
             %>
	             <%=prestr %><input type="checkbox" name="categoryid" value= "<%=c.getId() %>" ><%=c.getName() %><br>
             <%
             }else{
          	 %>
          	     <%=prestr+c.getName() %><br>
          	 <%
             }
        }
        %>
                        关键字：<input type="text" name="keyword">
        <input type="submit" value="第二种搜索">
    </form>
    <br>
	<center>复杂搜索</center>
	<form action="productsearch.jsp" method="post" onsubmit="checkdata()" name="complex">
		<input type="hidden" name="action" value="complexsearch">
		<table>
            <tr>
                <td>类别：</td>
                <td>
                   <select name="categoryid">
                        <option value="0">所有类别</option>   
						<%
						for(Iterator<Category> it=categories.iterator();it.hasNext();){
							 Category c = it.next();
							 String prestr = "";
							 for(int i=1; i<c.getGrade();i++){
								 prestr += "--";
							 }
							 %>
							 <option value="<%=c.getId() %>"><%=prestr + c.getName() %></option>
							 <%
						}
						%>
                   </select>
                </td>
            </tr>
            <tr>
                <td>关键字:</td>
                <td><input type="text" name="keyword"></td>
            </tr>
            <tr>
                <td>市场价:</td>
                 <td>
                    From:<input type="text" name="lownormalprice">
                    To:<input type="text" name="highnormalprice">
                 </td>
            </tr>
            <tr>
                <td>会员价:</td>
                 <td>
                    From:<input type="text" name="lowmemberprice">
                    To:<input type="text" name="highmemberprice">
                 </td>
            </tr>
			<tr>
				<td>上架日期</td>
				<td>
                    From:<input type="text" name="startdate">
                    To:<input type="text" name="enddate">
                 </td>
			</tr>
			<tr>
				<td colspan=2 align="center"><input type="submit" value=高级搜索></td>
			</tr>
		</table>
	</form>

</body>
</html>