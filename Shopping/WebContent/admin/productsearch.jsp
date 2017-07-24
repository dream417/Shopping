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
%>
 
 <%
request.setCharacterEncoding("GB18030");
 
String action = request.getParameter("action");		 
 if(action != null&&action.trim().equals("complexsearch")){
	 int pageNo = 1;
	 String strPageNo = request.getParameter("pageno");
	 if(strPageNo != null && !strPageNo.trim().equals("")){
		 pageNo = Integer.parseInt(strPageNo);
	 }
	 
	 String keyWord = request.getParameter("keyword");
	 double lowNormalPrice = Double.parseDouble(request.getParameter("lownormalprice"));
	 double highNormalPrice = Double.parseDouble(request.getParameter("highnormalprice"));
	 double lowMemberPrice = Double.parseDouble(request.getParameter("lowmemberprice"));
     double highMemberPrice = Double.parseDouble(request.getParameter("highmemberprice"));
	 int categoryId = Integer.parseInt(request.getParameter("categoryid"));
	 
	int[] idArray;
	 if(categoryId == 0){
		 idArray = null;
	 }else{
		 idArray = new int[1];
		 idArray[0] = categoryId; 
	 }
	 
	 Timestamp startDate;
	 Timestamp endDate;
	 String strStartDate = request.getParameter("startdate");
	 String strEndDate = request.getParameter("enddate");
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
     
     List<Product> products = new ArrayList<Product>();
	 int pageCount = ProductManager.getInstance().findpProducts(products,idArray, keyWord, 
			                                    lowNormalPrice, highNormalPrice, 
			                                    lowMemberPrice, highMemberPrice, 
			                                    startDate, endDate, 
			                                    pageNo, 3);
	 %>
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
        <a href="productsearch.jsp?action=<%=action %>&keyword=<%=keyWord %>&lownormalprice=<%=lowNormalPrice %>&highnormalprice=<%=highNormalPrice %>&lowmemberprice=<%=lowMemberPrice %>&highmemberprice=<%=highMemberPrice %>&startdate=<%=strStartDate %>&enddate=<%=strEndDate %>&categoryid=<%=categoryId %>&pageno=<%=pageNo+1 %>">��һҳ</a>
    </center>
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
    <center>������</center>
    <form action="productsearch.jsp" method="post">
        <input type="hidden" name="action" value="simplesearch">
                        ���<select></select>
                        �ؼ��֣�<input type="text" name="keyword">
        <input type="submit" value="������">
    </form>
    <br>
	<center>��������</center>
	<form action="productsearch.jsp" method="post" onsubmit="checkdata()" name="complex">
		<input type="hidden" name="action" value="complexsearch">
		<table>
            <tr>
                <td>���</td>
                <td>
                   <select name="categoryid">
                        <option value="0">�������</option>   
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
                <td>�ؼ���:</td>
                <td><input type="text" name="keyword"></td>
            </tr>
            <tr>
                <td>�г���:</td>
                 <td>
                    From:<input type="text" name="lownormalprice">
                    To:<input type="text" name="highnormalprice">
                 </td>
            </tr>
            <tr>
                <td>��Ա��:</td>
                 <td>
                    From:<input type="text" name="lowmemberprice">
                    To:<input type="text" name="highmemberprice">
                 </td>
            </tr>
			<tr>
				<td>�ϼ�����</td>
				<td>
                    From:<input type="text" name="startdate">
                    To:<input type="text" name="enddate">
                 </td>
			</tr>
			<tr>
				<td colspan=2 align="center"><input type="submit" value=�߼�����></td>
			</tr>
		</table>
	</form>

</body>
</html>