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
List<Category> categories = Category.getCategories();
List<Product> products = new ArrayList<Product>();
int pageCount = 0;
String keyWord = null;
double lowNormalPrice = -1;
double highNormalPrice = -1;
double lowMemberPrice = -1;
double highMemberPrice = -1; 
int categoryId = 0;
Timestamp startDate = null;
Timestamp endDate = null;
String strStartDate = null;
String strEndDate = null;

int pageNo = 1;
String strPageNo = request.getParameter("pageno");
if(strPageNo != null && !strPageNo.trim().equals("")){
    pageNo = Integer.parseInt(strPageNo);
}

String strcategoryIdQuery = "";
%>

 <%
request.setCharacterEncoding("GB18030");
 
String action = request.getParameter("action");      
 if(action != null&&action.trim().equals("complexsearch")){

     
     keyWord = request.getParameter("keyword");
     lowNormalPrice = Double.parseDouble(request.getParameter("lownormalprice"));
     highNormalPrice = Double.parseDouble(request.getParameter("highnormalprice"));
     lowMemberPrice = Double.parseDouble(request.getParameter("lowmemberprice"));
     highMemberPrice = Double.parseDouble(request.getParameter("highmemberprice"));
     categoryId = Integer.parseInt(request.getParameter("categoryid"));
     
    int[] idArray;
     if(categoryId == 0){
         idArray = null;
     }else{
         idArray = new int[1];
         idArray[0] = categoryId; 
     }
    
     strStartDate = request.getParameter("startdate");
     strEndDate = request.getParameter("enddate");
     if(strStartDate == null || strStartDate.trim().equals("")){
         startDate = null;
     }else{
         startDate = Timestamp.valueOf(strStartDate);
     }
     
     if(strEndDate == null || strEndDate.trim().equals("")){
         endDate = null;
     }else{
         endDate = Timestamp.valueOf(strEndDate);
     }   
     
     System.out.println(keyWord);
     
     products = new ArrayList<Product>();
     pageCount = ProductManager.getInstance().findpProducts(products,idArray, keyWord, 
                                                lowNormalPrice, highNormalPrice, 
                                                lowMemberPrice, highMemberPrice, 
                                                startDate, endDate, 
                                                pageNo, 3);
 }
 %>

 <%
//简单搜索2     
 if(action != null&&action.trim().equals("simplesearch2")){
     
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
        <%
        if(action != null && action.equals("complexsearch")){
        %>
            <a href="productsearch.jsp?action=<%=action %>&keyword=<%=keyWord %>&lownormalprice=<%=lowNormalPrice %>&highnormalprice=<%=highNormalPrice %>&lowmemberprice=<%=lowMemberPrice %>&highmemberprice=<%=highMemberPrice %>&startdate=<%=strStartDate %>&enddate=<%=strEndDate %>&categoryid=<%=categoryId %>&pageno=<%=pageNo+1 %>">下一页</a>
        <%
        }
        %>
        
        <%
        if(action != null && action.equals("simplesearch2")){
        %>
            <a href="productsearch.jsp?action=<%=action %>&keyword=<%=keyWord %>&pageno=<%=pageNo+1 %><%=strcategoryIdQuery %>">下一页</a>
        <%
        }
        %>
    </center>
  <!--显示搜索结果结束 -->
  
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