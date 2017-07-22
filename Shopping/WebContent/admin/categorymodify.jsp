<%@page import="com.bjsxt.shopping.Category"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ include file="_SessionCheck.jsp" %> 
 
 <%
request.setCharacterEncoding("GB18030");
 
String strid = request.getParameter("id");
int id = 0;
if(strid != null && !strid.equals("")){
    id = Integer.parseInt(strid);
}
Category c = Category.loadCategoryByID(id); 

String action = request.getParameter("action");      
 if(action != null&&action.trim().equals("modify")){
     String name = request.getParameter("name");
     String descr = request.getParameter("descr");
     
     c.setId(id);
     c.setName(name);
     c.setDescr(descr);
     
     c.modify();
     out.println("修改类别成功");
 }
 %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<script language="javascript">
     function reload(){
         //parent.main.location.reload();
         window.parent.main.document.location.reload();
     }
</script>
</head>
<body>
    <center>修改类别</center>
    <form action="categorymodify.jsp" method="post" onsubmit="reload()">
        <input type="hidden" name="action" value="modify">
        <table>
            <tr>
                <td>类别ID</td>
                <td><input type="text" name="id" readonly value="<%=c.getId() %>">
            </tr>
            <tr>
                <td>类别名称</td>
                <td><input type="text" name="name" value="<%=c.getName()%>"></td>
            </tr>
            <tr>
                <td>类别描述</td>
                <td><textarea name="descr" rows="8" cols="40"><%=c.getDescr() %></textarea></td>
            </tr>
            <tr>
                <td>类别Grade</td>
                <td><input type="text" name="name" value="<%=c.getGrade()%>"></td>
            </tr>            
            <tr>
                <td colspan=2><input type="submit" value=提交></td>
            </tr>
        </table>
    </form>

</body>
</html>