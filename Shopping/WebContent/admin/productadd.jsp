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
 
String strCategoryId = request.getParameter("categoryid");

int categoryId = 0;
if(strCategoryId != null && !strCategoryId.trim().equals("")){
	categoryId = Integer.parseInt(strCategoryId);
}

String action = request.getParameter("action");		 
 if(action != null&&action.trim().equals("add")){
	 String name = request.getParameter("name");
	 String descr = request.getParameter("descr");
	 double normalPrice = Double.parseDouble(request.getParameter("normalprice"));
	 double memberPrice = Double.parseDouble(request.getParameter("memberprice"));
	 categoryId = Integer.parseInt(request.getParameter("categoryid"));
	 
	 Category c = Category.loadCategoryByID(categoryId);
	 if(!c.isLeaf()){
		 out.println("��Ҷ�ӽڵ��£����������Ʒ");
		 return;
	 }
	 
	 Product p = new Product();
	 p.setId(-1);
	 p.setName(name);
	 p.setDescr(descr);
	 p.setNormalPrice(normalPrice);
	 p.setMemberPrice(memberPrice);
	 p.setPdate(new Timestamp(System.currentTimeMillis()));
	 p.setCategoryId(categoryId);

	 ProductManager.getInstance().addProducts(p);
	 out.println("�����Ʒ�ɹ�");
	 
 }
 %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<script language="javascript">
     var arrLeaf = new Array();
     function checkdata(){
    	 //parent.main.location.reload();
    	 //window.parent.man.document.location.reload();
    	  if(arrLeaf[document.form.categoryid.selectedIndex] != "leaf"){
    		  alert("����ѡ���Ҷ�ӽڵ㣬������ѡ��");
    		  return false;
    	  }
    	  return true;
     }
</script>
</head>
<body>
	<center>��Ӳ�Ʒ</center>
	<form action="productadd.jsp" method="post" onsubmit="return checkdata()" name="form">
		<input type="hidden" name="action" value="add">
		<table>
            <tr>
                <td>��Ʒ����</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>��Ʒ����</td>
                <td><textarea cols=40 rows=8 name="descr"></textarea></td>
            </tr>
            <tr>
                <td>�г���</td>
                 <td><input type="text" name="normalprice"></td>
            </tr>
            <tr>
                <td>��Ա��</td>
                 <td><input type="text" name="memberprice"></td>
            </tr>
			<tr>
				<td>���ID</td>
				<td>
				    <select name="categoryid">
                        <option value="0">�������</option> 
                        <script type="text/javascript">
                             arrLeaf[0] = "noleaf";                    
                        </script>
                        <%
                        List<Category> categories = Category.getCategories();
                        int index = 1;
                        for(Iterator<Category> it=categories.iterator();it.hasNext();){
                             Category c = it.next();
                             String prestr = "";
                             for(int i=1; i<c.getGrade();i++){
                                 prestr += "--";
                             }
                             %>
                             <script type="text/javascript">
                                  arrLeaf[<%=index%>] = '<%=c.isLeaf()?"leaf":"notleaf"%>';
                             </script>
                             <option value="<%=c.getId() %>" <%=c.getId() == categoryId?"selected":"" %>><%=prestr + c.getName() %></option>
                             <%
                             index++;
                        }
                        %>
                   </select>
				</td>
			</tr>
			<tr>
				<td colspan=2><input type="submit" value=�ύ></td>
			</tr>
		</table>
	</form>

</body>
</html>