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
//������2     
   
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
 
 
 <!--��ʾ���������ʼ -->
     <center>�������</center>
     <table border="1" align="center">
        <tr>
            <td>ID</td>
            <td>��Ʒ����</td>
            <td>��Ʒ����</td>
            <td>�г���</td>
            <td>��Ա��</td>
            <td>����ʱ��</td>
            <td>��Ʒ���</td>
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
                <a href="productdelete.jsp?id=<%= p.getId()%>" target="detail">ɾ��</a>
                &nbsp;&nbsp;
                <a href="productmodify.jsp?id=<%= p.getId()%>" target="detail">�޸�</a>               
            </td>
        </tr>
        <%
        }
        %>
    </table>
    <center>
                        ��<%=pageCount %>ҳ
        &nbsp;
        <a href="productsearch.jsp?action=<%=action %>&keyword=<%=keyWord %>&pageno=<%=pageNo+1 %><%=strcategoryIdQuery %>">��һҳ</a>
    </center>
  <!--��ʾ����������� -->