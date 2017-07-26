<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="java.sql.*,com.bjsxt.shopping.*,java.util.*" %>
<%@ include file="_SessionCheck.jsp" %>

<%
request.setCharacterEncoding("GB18030");
String action = request.getParameter("action");

int pageCount = 0;
int pageNo = 1;
String strPageNo = request.getParameter("pageno");
if(strPageNo != null && !strPageNo.trim().equals("")){
    pageNo = Integer.parseInt(strPageNo);
}

String keyWord = "";
String strcategoryIdQuery = "";
List<Category> categories = Category.getCategories();
List<Product> products = new ArrayList<Product>();
//简单搜索2     
   
keyWord = request.getParameter("keyword");

String[] strCategoryIds = request.getParameterValues("categoryid");
int[] idArray;

if(strCategoryIds == null || strCategoryIds.length == 0){
    idArray = null;
}else{
    for(int i=0;i<strCategoryIds.length;i++){
        strcategoryIdQuery += "&categoryid=" + strCategoryIds[i];
        
    }
    
    idArray = new int[strCategoryIds.length];
    for(int i=0;i<strCategoryIds.length;i++){
        idArray[i] = Integer.parseInt(strCategoryIds[i]);
        
    }
    
    products = new ArrayList<Product>();
    pageCount = ProductManager.getInstance().findpProducts(products,idArray, keyWord, 
                                               -1, -1, 
                                               -1, -1, 
                                               null, null, 
                                               pageNo, 3);
}
%>
 
 
 <!--显示搜索结果开始 -->
     <center>搜索结果</center>
     <table border="1" align="center">
        <tr>
            <td>ID</td>
            <td>产品名称</td>
            <td>产品描述</td>
            <td>市场价</td>
            <td>会员价</td>
            <td>更新时间</td>
            <td>产品类别</td>
        </tr>
        <%
        for(Iterator<Product> it = products.iterator();it.hasNext();){
            Product p = it.next();
        %>
            <tr>
            <td><%=p.getId() %></td>
            <td><%=p.getName() %></td>
            <td><%=p.getDescr() %></td>
            <td><%=p.getNormalPrice() %></td>
            <td><%=p.getMemberPrice() %></td>
            <td><%=p.getPdate() %></td>
            <td><%=p.getCategoryId() %></td>
            <td>
                <a href="productdelete.jsp?id=<%= p.getId()%>" target="detail">删除</a>
                &nbsp;&nbsp;
                <a href="productmodify.jsp?id=<%= p.getId()%>" target="detail">修改</a>               
            </td>
        </tr>
        <%
        }
        %>
    </table>
    <center>
                        共<%=pageCount %>页
        &nbsp;
        <a href="productsearch.jsp?action=<%=action %>&keyword=<%=keyWord %>&pageno=<%=pageNo+1 %><%=strcategoryIdQuery %>">下一页</a>
    </center>
  <!--显示搜索结果结束 -->