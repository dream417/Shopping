<%@ page language="java" contentType="text/html; charset=GB18030" 
    pageEncoding="GB18030"%>
<%@ page import="com.bjsxt.shopping.*" %>
<%@page import="java.sql.Timestamp"%>
   
<%
User u = (User)session.getAttribute("user");
if(u==null){
    out.print("You have not logined in");
    return;
}
%>  
  
<%
    request.setCharacterEncoding("GB18030");
    String action = request.getParameter("action");
    if(action != null && action.equals("update")){
        
        String username = request.getParameter("username");
        String phone = request.getParameter("phone");
        String addr = request.getParameter("addr");
        u.setUserName(username);
        u.setPhone(phone);
        u.setAddr(addr);
        u.update();
        out.println("恭喜，修改成功");
    }
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>用户注册</title>

<style type="text/css"><!--
a           { text-decoration: none; color: #000000 }
a:hover         { text-decoration: underline }
body            { scrollbar-base-color: #F3F6FA; scrollbar-arrow-color: #4D76B3; font-size: 12px; background-color: #ffffff }
table           { font: 12px Verdana,Tahoma; color: #000000 }
input,select,textarea   { font: 11px Verdana,Tahoma; color: #000000; font-weight: normal; background-color: #F3F6FA }
select          { font: 11px Verdana,Tahoma; color: #000000; font-weight: normal; background-color: #F3F6FA }
.nav            { font: 12px Verdana,Tahoma; color: #000000; font-weight: bold }
.nav a          { color: #000000 }
.header         { font: 11px Verdana,Tahoma; color: #FFFFFF; font-weight: bold; background-image: url("images/green/bg01.gif") }
.header a       { color: #FFFFFF }
.category       { font: 11px Verdana,Tahoma; color: #000000; background-color: #EFEFEF }
.tableborder        { background: #4D76B3; border: 0px solid #4D76B3 } 
.singleborder       { font-size: 0px; line-height: 0px; padding: 0px; background-color: #F3F6FA }
.smalltxt       { font: 11px Verdana,Tahoma }
.outertxt       { font: 12px Verdana,Tahoma; color: #000000 }
.outertxt a     { color: #000000 }
.bold           { font-weight: bold }
.altbg1         { background: #F3F6FA }
.altbg2         { background: #FFFFFF }
--></style>

<script type="text/javascript" src="script/regcheckdata.js"></script>
</head>
<body>
    <form name="form" method="post" name="action" action="userModify.jsp">
        <input type="hidden" name="action" value="update" />

        <table class="tableborder" align="center" cellpadding="4"
            cellspacing="1" width="97%">
            <tbody>
                <tr>
                    <td colspan="2" class="header">用户修改</td>
                </tr>
                <tr>
                    <td class="altbg1" width="21%">用户名:</td>
                    <td class="altbg2">
                    <input id="userid" name="username" size="25" maxlength="25" type="text" value=<%=u.getUserName()%>></td>
                        <span id="usermsg"></span>
                </tr>
                <!--  
                <tr>
                    <td class="altbg1">密码:</td>
                    <td class="altbg2"><input name="password" size="25"
                        type="password"></td>
                </tr>
                <tr>
                    <td class="altbg1">确认密码:</td>
                    <td class="altbg2"><input name="password2" size="25"
                        type="password"></td>
                </tr>-->

                <tr>
                    <td class="altbg1">&#30005;&#35805;:</td>
                    <td class="altbg2"><input name="phone" type="text" id="phone"
                        size="25" value=<%=u.getPhone() %>></td>
                </tr>

                <tr>
                    <td class="altbg1" valign="top">送货地址:</td>
                    <td class="altbg2">
                        <textarea name="addr" cols="60" rows="5"id="addr" style="font-size:14px" ><%=u.getAddr() %></textarea>
                    </td>
                </tr>
            </tbody>
        </table>
        <br>
        <center>
            <input value="提 &nbsp; 交" type="submit">
            <input type="reset" value="重 &nbsp; 置">
        </center>
    </form>
</body>
</html>