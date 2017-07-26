<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="java.sql.*,com.bjsxt.shopping.*,java.util.*" %>
<%@ include file="_SessionCheck.jsp" %>

<%
request.setCharacterEncoding("GB18030");
int id = Integer.parseInt(request.getParameter("id"));
Product p = ProductManager.getInstance().loadById(id);

String action = request.getParameter("action");
if(action != null && action.equals("modify")){
	String name = request.getParameter("name");
	String descr = request.getParameter("descr");
	double normalPrice = Double.parseDouble(request.getParameter("normalprice"));
	double memberPrice = Double.parseDouble(request.getParameter("memberprice"));
	int categoryId = Integer.parseInt(request.getParameter("categoryid"));
	
	Category c = Category.loadCategoryByID(categoryId);
	if(!c.isLeaf()){
		out.println("��Ҷ�ӽڵ㲻�������Ʒ");
		return;
	}
	
	p.setName(name);
	p.setDescr(descr);
	p.setNormalPrice(normalPrice);
	p.setMemberPrice(memberPrice);
	p.setCategoryId(categoryId);
	
	ProductManager.getInstance().updateProduct(p);
	out.println("�޸ĳɹ���");
	%>
	   <script type="text/javascript">
	    window.parent.main.location.reload();
	   </script>
<!--

//-->
</script>
	<%
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
    <center>�޸Ĳ�Ʒ</center>
    <form action="productmodify.jsp" method="post" onsubmit="return checkdata()" name="form">
        <input type="hidden" name="action" value="modify">
        <input type="hidden" name="id" value="<%=id %>">
        <table>
            <tr>
                <td>��Ʒ����</td>
                <td><input type="text" name="name" value="<%=p.getName() %>"></td>
            </tr>
            <tr>
                <td>��Ʒ����</td>
                <td><textarea cols=40 rows=8 name="descr"><%=p.getDescr() %></textarea></td>
            </tr>
            <tr>
                <td>�г���</td>
                 <td><input type="text" name="normalprice" value="<%=p.getNormalPrice() %>"></td>
            </tr>
            <tr>
                <td>��Ա��</td>
                 <td><input type="text" name="memberprice" value="<%=p.getMemberPrice() %>"></td>
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
                             <option value="<%=c.getId() %>" <%=c.getId() == p.getCategoryId()?"selected":"" %>><%=prestr + c.getName() %></option>
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