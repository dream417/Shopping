<%@page import="com.bjsxt.shopping.ProductManager"%>
<%@page import="com.bjsxt.shopping.Product"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>

<%
request.setCharacterEncoding("GB18030");
List<Product> latestProducts = ProductManager.getInstance().getLatestProducts(4);

%>

<!-- saved from url=(0051)http://www.bluethink.com.cn/bl_pma.php?pma_code=108 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<meta http-equiv="Content-Language" content="zh-cn">
<link rel="Shortcut Icon" href="./images/favicon.ico">
<title>金尚网上商城</title>
<style type="text/css">
body {
	margin: 0px;
	background-image: url('images/back.gif');
}
</style>
<link href="./images/new.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {
	font-size: 12px;
	color: #666666;
}

.style13 {
	font-size: 11px
}

.style15 {
	font-size: 12px;
	color: #000000;
	line-height: 18px;
}

.style5 {
	font-size: 12px
}
-->
</style>
<script language="javascript1.2">
	
	
function js_callpage(htmlurl)
{
	var newwin=window.open(htmlurl,'','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,top=2,left=10,width=360,height=470');
	return false;
}
function js_callpage1(htmlurl)
{
	var newwin=window.open(htmlurl,'','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,top=2,left=10,width=100,height=100');
	return false;
}

</script>
<script language="JavaScript">
var imgUrl=new Array();
var imgLink=new Array();
var imgTitle=new Array();
var imgPrice1=new Array();
var imgPrice2=new Array();
var adNum=0;
var j=0;
for (i=1;i<imgUrl.length;i++) {
if( (imgUrl[i]!="") && (imgLink[i]!="") ) {
j++;
} else {
break;
}
}
function playTran(){
if (document.all)
imgInit.filters.revealTrans.play();
}
var key=0;
function nextAd(){
if(adNum<j)adNum++ ;
else adNum=1;
if( key==0 ){
key=1;
} else if (document.all){
imgInit.filters.revealTrans.Transition=10;
imgInit.filters.revealTrans.apply();
 playTran();
}
document.images.imgInit.src=imgUrl[adNum];
document.images.imgInit.title=imgTitle[adNum];
img_title.innerHTML=imgTitle[adNum];
//img_price1.innerHTML='<font color=#cc0000>'+imgPrice1[adNum]+'</font>';
theTimer=setTimeout("nextAd()", 6000);
}
function goUrl(){
jumpUrl=imgLink[adNum];
jumpTarget='_blank';
if (jumpUrl != ''){
if (jumpTarget != '')
window.open(jumpUrl,jumpTarget);
else
location.href=jumpUrl;
}
}
</script>
</head>
<body>
	<table width="760" border="0" align="center" cellpadding="0"
		cellspacing="0" bgcolor="#FFFFFF">
		<tbody>
			<tr>
				<td
					style="border-left: 1px solid #E2E2E2; border-right: 1px solid #E2E2E2"><table
						width="760" border="0" align="center" cellpadding="0"
						cellspacing="0" bgcolor="#FFFFFF">
						<tbody>
							<tr>
								<td><table width="100%" height="65" border="0"
										cellpadding="0" cellspacing="0">
										<tbody>
											<tr valign="bottom">
												<td width="24%" height="65" rowspan="2" valign="bottom"><a
													href="http://www.bluethink.com.cn/index.php"><img
														src="./images/logo.gif" width="186" height="60" border="0"></a></td>
												<td width="3%" rowspan="2" valign="bottom"><img
													src="./images/top1.gif" width="25" height="65"></td>
												<td width="61%" rowspan="2" valign="bottom"
													bgcolor="#E9E9E9"></td>
												<td width="12%" height="33" align="center" bgcolor="#E9E9E9"><a
													href="http://www.bluethink.com.cn/mybluex.php?type=order"><img
														src="./images/top2.gif" width="75" height="24" border="0"></a></td>
											</tr>
											<tr>
												<td align="center" height="32" bgcolor="#E9E9E9"><a
													href="http://www.bluethink.com.cn/help.php"><img
														src="./images/top5.gif" width="75" height="24" border="0"></a></td>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td bgcolor="#E9E9E9"><img src="./images/top3.gif"
									width="185" height="9"></td>
							</tr>
							<tr>
								<td height="1"></td>
							</tr>
							<tr>
								<td>
									<link href="./images/new.css" rel="stylesheet" type="text/css">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td valign="bottom" background="./images/bgtop01.gif"><table
														width="100%" border="0" cellpadding="0" cellspacing="0">
														<tbody>
															<tr>
																<td width="11%" align="center" class="mingcheng"><font
																	color="#FFFFFF">IT周边</font></td>
																<td width="89%" rowspan="2" class="white"><a
																	href="javascript:pmto(&#39;103&#39;)" class="white">手机数码</a>｜<a
																	href="javascript:pmto(&#39;101&#39;)" class="white">整机/外设</a>｜<a
																	href="javascript:pmto(&#39;102&#39;)" class="white">配件</a>｜<a
																	href="javascript:pmto(&#39;109&#39;)" class="white">个护健康</a>｜<a
																	href="javascript:pmto(&#39;104&#39;)" class="white">车载出行</a>｜<a
																	href="javascript:pmto(&#39;105&#39;)" class="white">钟表箱包</a>｜<a
																	href="javascript:pmto(&#39;108&#39;)" class="white"><font
																		color="#ffff00"><b>穿戴配饰</b></font></a>｜<a
																	href="javascript:pmto(&#39;106&#39;)" class="white">日用家居</a>｜<a
																	href="javascript:pmto(&#39;107&#39;)" class="white">文体办公</a>｜<a
																	href="javascript:pmto(&#39;110&#39;)" class="white">书香文玩</a><br>
																	<a href="javascript:pmto(&#39;112&#39;)" class="white">酒水食品</a></td>
															</tr>
															<tr>
																<td valign="bottom"><img src="./images/bgtop02.gif"
																	width="83" height="7"></td>
															</tr>
														</tbody>
													</table></td>
											</tr>
											<tr>
												<td background="./images/bgtop03.gif"><table
														width="100%" border="0" cellspacing="0" cellpadding="0">
														<tbody>
															<tr>
																<td width="11%" align="center" class="mingcheng"><font
																	color="#FFFFFF">日用礼品</font></td>
																<td width="89%" class="white"></td>
															</tr>
														</tbody>
													</table></td>
											</tr>
											<tr>
												<td height="1"></td>
											</tr>
											<tr>
												<td height="30" background="./images/srcbg.gif"><table
														width="100%" border="0" cellspacing="0" cellpadding="0"
														style="border-collapse: collapse">
														<form onSubmit="return Vsh(this)"
															action="http://www.bluethink.com.cn/bl_search.php"
															method="post"></form>
														<tbody>
															<tr>
																<td width="6%" align="center"><img
																	src="./images/zoom.gif" width="20" height="31"></td>
																<td align="left"><input
																	onblur="if(this.value==&#39;&#39;){this.value=&#39;请输入您所要查找的商品名称&#39;;}"
																	style="FONT-SIZE: 9pt; COLOR: #555555"
																	onfocus="if(this.value==&#39;请输入您所要查找的商品名称&#39;){this.value=&#39;&#39;;}"
																	maxlength="30" size="30" value="请输入您所要查找的商品名称"
																	name="searchname"> <input
																	onblur="if(this.value==&#39;&#39;){this.value=&#39;商品编号&#39;;}"
																	style="FONT-SIZE: 9pt; COLOR: #555555"
																	onfocus="if(this.value==&#39;商品编号&#39;){this.value=&#39;&#39;;}"
																	maxlength="20" size="8" value="商品编号" name="searchcode">
																	<input style="POSITION: relative; TOP: 2px"
																	type="image" src="./images/go.gif" border="0"
																	width="20" height="17">&nbsp;&nbsp;<a
																	href="http://www.bluethink.com.cn/bl_hisearch.php"
																	class="th">高级</a></td>
																<input type="hidden" name="Bsearch" value="Y">
																<td align="right"><iframe frameborder="0"
																		height="18" name="buysta" src="./images/buysta.html"
																		width="305" scrolling="no"></iframe></td>
															</tr>
														</tbody>
													</table></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td height="1" bgcolor="#E9E9EB"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td><table width="100%" border="0" cellspacing="0"
										cellpadding="0">
										<tbody>
											<tr>
												<td width="23%" valign="top" bgcolor="f6fdff"><table
														width="100%" border="0" cellspacing="0" cellpadding="0">
														<tbody>
															<tr>
																<td height="10" bgcolor="#5f88b6"><font
																	color="#ffffff">&nbsp;用户登录</font></td>
															</tr>
															<tr>
																<td align="center"
																	style="border-left: 1px solid #5f88b6; border-right: 1px solid #5f88b6; border-bottom: 1px solid #5f88b6">
																	<div align="center">
																		<table width="100%" border="0" cellpadding="0"
																			cellspacing="0" style="border-collapse: collapse">
																			<form method="POST"
																				action="http://www.bluethink.com.cn/login.php"
																				target="ifr_l"></form>
																			<tbody>
																				<tr>
																					<td colspan="3"><iframe frameborder="0"
																							name="ifr_l" id="ifr_l" height="0" width="0"
																							scrolling="no" src="./images/saved_resource.html"></iframe></td>
																					<td width="30" height="75" rowspan="4"><img
																						src="./images/login_b.gif" width="30" height="70"></td>
																				</tr>
																				<tr>
																					<td width="5" height="20"></td>
																					<td width="60" height="25">用户名:</td>
																					<td width="75" height="25"><input
																						name="cardnumber" type="text" value="" size="12"
																						style="font-size: 9pt" tabindex="1" maxlength="30">
																					</td>
																				</tr>
																				<tr>
																					<td width="5" height="20"></td>
																					<td width="60" height="25">密&nbsp;&nbsp;&nbsp;码:</td>
																					<td width="75" height="25"><input
																						name="passwd" type="password" size="12"
																						style="font-size: 9pt" tabindex="2" maxlength="18">
																					</td>
																				</tr>
																				<tr>
																					<td height="20" colspan="3">→ <a
																						href="register.jsp">新用户注册</a> <input
																						name="imageField" type="image"
																						src="./images/login_enter.gif"
																						onClick="location.href='login.jsp'" width="45"
																						height="15" border="0" tabindex="3">
																					</td>
																				</tr>
																				<input type="hidden" name="fsource" value="top">
																				<tr>
																					<td height="20" colspan="4">支持用户:蓝快站点/蓝快用户</td>
																				</tr>
																			</tbody>
																		</table>
																	</div>
																</td>
															</tr>
															<tr>
																<td height="5" align="center" bgcolor="#FCF8EF"></td>
															</tr>
															<tr>
																<td bgcolor="#5f88b6" height="10">&nbsp;<font
																	color="#FFFFFF">商品分类</font></td>
															</tr>
															<tr>
																<td align="center" bgcolor="#f6fdff"
																	style="border-left: 1px solid #5f88b6; border-right: 1px solid #5f88b6; border-bottom: 1px solid #5f88b6">
																	<table width="90%" border="0" cellspacing="0"
																		cellpadding="0" style="border-collapse: collapse"
																		bordercolor="#111111">
																		<tbody>
																			<tr>
																				<td height="25"><img src="./images/jt_2.gif">&nbsp;&nbsp;<a
																					href="http://www.bluethink.com.cn/bl_pma.php?pma_code=108"
																					class="lf"><b>穿戴配饰</b></a></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#bbd1e5"></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#FFFFFF"></td>
																			</tr>
																			<tr>
																				<td style="position: relative; left: 18"><font
																					color="#D76F00">· </font><a
																					href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=51"
																					class="lf">时尚配饰</a></td>
																			</tr>
																			<tr>
																				<td style="position: relative; left: 18"><font
																					color="#D76F00">· </font><a
																					href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=52"
																					class="lf">金玉珠宝</a></td>
																			</tr>
																			<tr>
																				<td style="position: relative; left: 18"><font
																					color="#D76F00">· </font><a
																					href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=50"
																					class="lf">礼盒套组</a></td>
																			</tr>
																			<tr>
																				<td style="position: relative; left: 18"><font
																					color="#D76F00">· </font><a
																					href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=49"
																					class="lf">穿戴</a></td>
																			</tr>
																			<tr>
																				<td height="25"><img src="./images/jt_2.gif">&nbsp;&nbsp;<a
																					href="http://www.bluethink.com.cn/bl_pma.php?pma_code=103"
																					class="lf"><b>手机数码</b></a></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#bbd1e5"></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#FFFFFF"></td>
																			</tr>
																			<tr>
																				<td height="25"><img src="./images/jt_2.gif">&nbsp;&nbsp;<a
																					href="http://www.bluethink.com.cn/bl_pma.php?pma_code=101"
																					class="lf"><b>整机/外设</b></a></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#bbd1e5"></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#FFFFFF"></td>
																			</tr>
																			<tr>
																				<td height="25"><img src="./images/jt_2.gif">&nbsp;&nbsp;<a
																					href="http://www.bluethink.com.cn/bl_pma.php?pma_code=102"
																					class="lf"><b>配件</b></a></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#bbd1e5"></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#FFFFFF"></td>
																			</tr>
																			<tr>
																				<td height="25"><img src="./images/jt_2.gif">&nbsp;&nbsp;<a
																					href="http://www.bluethink.com.cn/bl_pma.php?pma_code=109"
																					class="lf"><b>个护健康</b></a></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#bbd1e5"></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#FFFFFF"></td>
																			</tr>
																			<tr>
																				<td height="25"><img src="./images/jt_2.gif">&nbsp;&nbsp;<a
																					href="http://www.bluethink.com.cn/bl_pma.php?pma_code=104"
																					class="lf"><b>车载出行</b></a></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#bbd1e5"></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#FFFFFF"></td>
																			</tr>
																			<tr>
																				<td height="25"><img src="./images/jt_2.gif">&nbsp;&nbsp;<a
																					href="http://www.bluethink.com.cn/bl_pma.php?pma_code=105"
																					class="lf"><b>钟表箱包</b></a></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#bbd1e5"></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#FFFFFF"></td>
																			</tr>
																			<tr>
																				<td height="25"><img src="./images/jt_2.gif">&nbsp;&nbsp;<a
																					href="http://www.bluethink.com.cn/bl_pma.php?pma_code=106"
																					class="lf"><b>日用家居</b></a></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#bbd1e5"></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#FFFFFF"></td>
																			</tr>
																			<tr>
																				<td height="25"><img src="./images/jt_2.gif">&nbsp;&nbsp;<a
																					href="http://www.bluethink.com.cn/bl_pma.php?pma_code=107"
																					class="lf"><b>文体办公</b></a></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#bbd1e5"></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#FFFFFF"></td>
																			</tr>
																			<tr>
																				<td height="25"><img src="./images/jt_2.gif">&nbsp;&nbsp;<a
																					href="http://www.bluethink.com.cn/bl_pma.php?pma_code=110"
																					class="lf"><b>书香文玩</b></a></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#bbd1e5"></td>
																			</tr>
																			<tr>
																				<td height="1" bgcolor="#FFFFFF"></td>
																			</tr>
																			<tr>
																				<td height="25"><img src="./images/jt_2.gif">&nbsp;&nbsp;<a
																					href="http://www.bluethink.com.cn/bl_pma.php?pma_code=112"
																					class="lf"><b>酒水食品</b></a></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="5" align="center" bgcolor="#FCF8EF"></td>
															</tr>
															<tr>
																<td bgcolor="#5f88b6"><font color="#ffffff">&nbsp;销售排行</font></td>
															</tr>
															<tr>
																<td align="center" bgcolor="#f6fdff"
																	style="border-left: 1px solid #5f88b6; border-right: 1px solid #5f88b6; border-bottom: 1px solid #5f88b6"></td>
															</tr>
															<tr>
																<td height="5" align="center" bgcolor="#FCF8EF"></td>
															</tr>
															<tr>
																<td bgcolor="#5f88b6"><font color="#ffffff">&nbsp;应用文章</font></td>
															</tr>
															<tr>
																<td align="center" bgcolor="#f6fdff"
																	style="border-left: 1px solid #5f88b6; border-right: 1px solid #5f88b6; border-bottom: 1px solid #5f88b6">
																	<table width="90%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tbody>
																			<tr>
																				<td height="10" align="right"><a
																					href="http://www.bluethink.com.cn/bl_extend.php?type=file"><span
																						style="font-size: 7pt">MORE..</span></a></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="5" align="center" bgcolor="#FCF8EF"></td>
															</tr>
															<tr>
																<td bgcolor="#5f88b6"><font color="#ffffff">&nbsp;新品推荐</font></td>
															</tr>
															<tr>
																<td align="left" bgcolor="#f6fdff"
																	style="border-left: 1px solid #5f88b6; border-right: 1px solid #5f88b6; border-bottom: 1px solid #5f88b6">
																	<table width="90%" border="0" cellspacing="0"
																		cellpadding="0" style="border-collapse: collapse"
																		align="center">
																		<tbody>
																			<tr>
																				<td width="70"><span
																					onclick="javascript:goUrl()" style="cursor: hand">
																						<img id="imgInit"
																						style="FILTER: revealTrans(duration = 1, transition = 4); border-color: black; color: #000000"
																						width="75" height="90" border="0" name="imgInit">
																				</span></td>
																				<td width="70">
																					<table border="0" cellpadding="0" cellspacing="0"
																						style="border-collapse: collapse"
																						bordercolor="#111111" width="100%">
																						<tbody>
																							<tr>
																								<td width="100%" height="60"><a
																									href="http://www.bluethink.com.cn/bl_pma.php?pma_code=108"
																									onclick="return false"><span id="img_title"
																										onclick="javascript:goUrl()"></span></a></td>
																							</tr>
																							<tr>
																								<td width="100%">
																									<!--<span id='img_price1'>-->
																								</td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="5" align="center" bgcolor="#FCF8EF"></td>
															</tr>
														</tbody>
													</table></td>
												<td width="1%"></td>
												<td width="76%" valign="top">
                                                
													<!--start-->
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0" style="border-collapse: collapse"
														bordercolor="#111111">
														<tbody>
															<tr>
																<td height="29">当前位置：<a
																	href="http://www.bluethink.com.cn/index.php">蓝派商城</a>
																	&gt; <a
																	href="http://www.bluethink.com.cn/bl_pma.php?pma_code=108">穿戴配饰</a></td>
															</tr>
															<tr>
																<td style="border: 1px solid #F1F1F1" height="18"></td>
															</tr>
															<tr>
																<td height="18"></td>
															</tr>
															<tr>
																<td height="119">
																	<table border="0" cellpadding="0" cellspacing="0"
																		style="border-collapse: collapse"
																		bordercolor="#111111" width="100%">
																		<tbody>
																			<tr>
																				<td height="23" align="center"
																					background="./images/bg_03.gif">
																					<table width="95%" border="0" cellspacing="0"
																						cellpadding="0">
																						<tbody>
																							<tr>
																								<td width="3%"></td>
																								<td width="87%"><a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=51"
																									class="white"><b>最新商品</b></a></td>
																								<td width="10%" align="right"><a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=51"
																									class="white"><b>MORE..</b></a></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<table width="100%" border="0" cellpadding="0"
																						cellspacing="0" style="border-collapse: collapse">
																						<tbody>
																							<tr align="center" bgcolor="#f6fdff">
																							    
																							    <%
																							    //latest products start here
																							    for(int i=0;i<latestProducts.size();i++){
																							    	Product p = latestProducts.get(i);
																							    %>
																								<td align="center" width="25%" valign="top">
                                                                                                <!--start here-->
                                                                                                <table width="95%" border="0" cellspacing="0"cellpadding="0">
																										<tbody>
																											<tr>
																												<td height="125" align="center" valign="bottom">
																													<table width="105" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
																														<tbody>
																															<tr>
																																<td rowspan="3">
																																	<img src="./images/line_l.gif" width="1" height="105">
																																</td>
																																<td>
																																	<img src="./images/line_r.gif" width="103" height="1">
																																</td>
																																<td rowspan="3">
																																	<img src="./images/line_l.gif" width="1" height="105">
																																</td>
																															</tr>
																															<tr>
																																<td height="103" align="center">
																																	<a href="http://www.bluethink.com.cn/bl_pi.php?productcode=SR0018">
																																		<img src="./images/sr0018.gif" alt="<%=p.getName() %>" width="90" height="90" border="0">
																																	</a>
																																</td>
																															</tr>
																															<tr>
																																<td>
																																	<img src="./images/line_r.gif" width="103" height="1">
																																</td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td height="80" align="center">
																													<a href="http://www.bluethink.com.cn/bl_pi.php?productcode=SR0018" class="mingcheng1">
																													<%=p.getName() %>
																													</a>
																													<br> 
																													商城价格：
																													<font color="#CC0000">&yen<%=p.getNormalPrice() %></font>
																													<br> 
																													<a href="http://www.bluethink.com.cn/bl_buy.php?productcode=SR0018" target="_blank">
																														<img src="./images/xiaoche_hide.gif" border="0">
																													</a>
																												</td>
																											</tr>
																										</tbody>
																									</table>
                                                                                                    <!---end here-->
                                                                                                    
                                                                                                    </td>

																								<%
																								}
																								//latest products end here
																								%>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td height="5"></td>
																			</tr>
																			<tr>
																				<td height="23" align="center"
																					background="./images/bg_03.gif">
																					<table width="95%" border="0" cellspacing="0"
																						cellpadding="0">
																						<tbody>
																							<tr>
																								<td width="3%"></td>
																								<td width="87%"><a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=52"
																									class="white"><b>金玉珠宝</b></a> &nbsp; <a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=52&amp;sub_cat_code=278"
																									class="white">手把件</a> - <a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=52&amp;sub_cat_code=279"
																									class="white">手串</a> - <a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=52&amp;sub_cat_code=280"
																									class="white">戒指</a> - <a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=52&amp;sub_cat_code=281"
																									class="white">挂件</a> - <a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=52&amp;sub_cat_code=282"
																									class="white">手链</a> - <a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=52&amp;sub_cat_code=283"
																									class="white">项链</a> - <a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=52&amp;sub_cat_code=284"
																									class="white">项坠</a> - <a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=52&amp;sub_cat_code=285"
																									class="white">玉牌</a> - <a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=52&amp;sub_cat_code=646"
																									class="white">耳饰</a></td>
																								<td width="10%" align="right"><a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=52"
																									class="white"><b>MORE..</b></a></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<table width="100%" border="0" cellpadding="0"
																						cellspacing="0" style="border-collapse: collapse">
																						<tbody>
																							<tr align="center" bgcolor="#f6fdff">
																								<td align="center" width="25%" valign="top"><table
																										width="95%" border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td height="125" align="center"
																													valign="bottom">
																													<table width="105" border="0"
																														cellpadding="0" cellspacing="0"
																														bgcolor="#FFFFFF">
																														<tbody>
																															<tr>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																															</tr>
																															<tr>
																																<td height="103" align="center"><a
																																	href="http://www.bluethink.com.cn/bl_pi.php?productcode=DZ0010"><img
																																		src="./images/dz0010.gif" width="90"
																																		height="90" border="0"></a></td>
																															</tr>
																															<tr>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td height="80" align="center"><a
																													href="http://www.bluethink.com.cn/bl_pi.php?productcode=DZ0010"
																													class="mingcheng1">德增玉坊手雕『招财貔貅』和田玉手把件</a><br>
																													商城价格：<font color="#CC0000">￥2999.00</font><br>
																													<a
																													href="http://www.bluethink.com.cn/bl_buy.php?productcode=DZ0010"
																													target="_blank"><img
																														src="./images/xiaoche_hide.gif" border="0"></a></td>
																											</tr>
																										</tbody>
																									</table></td>
																								<td align="center" width="25%" valign="top"><table
																										width="95%" border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td height="125" align="center"
																													valign="bottom">
																													<table width="105" border="0"
																														cellpadding="0" cellspacing="0"
																														bgcolor="#FFFFFF">
																														<tbody>
																															<tr>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																															</tr>
																															<tr>
																																<td height="103" align="center"><a
																																	href="http://www.bluethink.com.cn/bl_pi.php?productcode=JS0026"><img
																																		src="./images/js0026.gif" width="90"
																																		height="90" border="0"></a></td>
																															</tr>
																															<tr>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td height="80" align="center"><a
																													href="http://www.bluethink.com.cn/bl_pi.php?productcode=JS0026"
																													class="mingcheng1">金世玉珠宝专柜正品女款生日礼物玉手链纯..</a><br>
																													商城价格：<font color="#CC0000">￥299.00</font><br>
																													<a
																													href="http://www.bluethink.com.cn/bl_buy.php?productcode=JS0026"
																													target="_blank"><img
																														src="./images/xiaoche_hide.gif" border="0"></a></td>
																											</tr>
																										</tbody>
																									</table></td>
																								<td align="center" width="25%" valign="top"><table
																										width="95%" border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td height="125" align="center"
																													valign="bottom">
																													<table width="105" border="0"
																														cellpadding="0" cellspacing="0"
																														bgcolor="#FFFFFF">
																														<tbody>
																															<tr>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																															</tr>
																															<tr>
																																<td height="103" align="center"><a
																																	href="http://www.bluethink.com.cn/bl_pi.php?productcode=JJ0001"><img
																																		src="./images/jj0001.gif" width="90"
																																		height="90" border="0"></a></td>
																															</tr>
																															<tr>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td height="80" align="center"><a
																													href="http://www.bluethink.com.cn/bl_pi.php?productcode=JJ0001"
																													class="mingcheng1">吉赛娅
																														和田白玉圆领钻聚开口戒指XQ-1412..</a><br> 商城价格：<font
																													color="#CC0000">￥399.00</font><br> <a
																													href="http://www.bluethink.com.cn/bl_buy.php?productcode=JJ0001"
																													target="_blank"><img
																														src="./images/xiaoche_hide.gif" border="0"></a></td>
																											</tr>
																										</tbody>
																									</table></td>
																								<td align="center" width="25%" valign="top"><table
																										width="95%" border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td height="125" align="center"
																													valign="bottom">
																													<table width="105" border="0"
																														cellpadding="0" cellspacing="0"
																														bgcolor="#FFFFFF">
																														<tbody>
																															<tr>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																															</tr>
																															<tr>
																																<td height="103" align="center"><a
																																	href="http://www.bluethink.com.cn/bl_pi.php?productcode=JS0041"><img
																																		src="./images/js0041.gif" width="90"
																																		height="90" border="0"></a></td>
																															</tr>
																															<tr>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td height="80" align="center"><a
																													href="http://www.bluethink.com.cn/bl_pi.php?productcode=JS0041"
																													class="mingcheng1">金世玉专柜正品翡翠戒指（男女均可，可选..</a><br>
																													商城价格：<font color="#CC0000">￥99.00</font><br>
																													<a
																													href="http://www.bluethink.com.cn/bl_buy.php?productcode=JS0041"
																													target="_blank"><img
																														src="./images/xiaoche_hide.gif" border="0"></a></td>
																											</tr>
																										</tbody>
																									</table></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td height="5"></td>
																			</tr>
																			<tr>
																				<td height="23" align="center"
																					background="./images/bg_03.gif">
																					<table width="95%" border="0" cellspacing="0"
																						cellpadding="0">
																						<tbody>
																							<tr>
																								<td width="3%"></td>
																								<td width="87%"><a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=50"
																									class="white"><b>礼盒套组</b></a> &nbsp; <a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=50&amp;sub_cat_code=267"
																									class="white">穿戴礼盒</a> - <a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=50&amp;sub_cat_code=271"
																									class="white">首饰礼盒</a></td>
																								<td width="10%" align="right"><a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=50"
																									class="white"><b>MORE..</b></a></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<table width="100%" border="0" cellpadding="0"
																						cellspacing="0" style="border-collapse: collapse">
																						<tbody>
																							<tr align="center" bgcolor="#f6fdff">
																								<td align="center" width="25%" valign="top"><table
																										width="95%" border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td height="125" align="center"
																													valign="bottom">
																													<table width="105" border="0"
																														cellpadding="0" cellspacing="0"
																														bgcolor="#FFFFFF">
																														<tbody>
																															<tr>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																															</tr>
																															<tr>
																																<td height="103" align="center"><a
																																	href="http://www.bluethink.com.cn/bl_pi.php?productcode=HP0226"><img
																																		src="./images/hp0226.gif" width="90"
																																		height="90" border="0"></a></td>
																															</tr>
																															<tr>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td height="80" align="center"><a
																													href="http://www.bluethink.com.cn/bl_pi.php?productcode=HP0226"
																													class="mingcheng1">惠普
																														(HP)定制Adidas运动套装AMD XG416PA..</a><br>
																													商城价格：<font color="#CC0000">￥59.00</font><br>
																													<a
																													href="http://www.bluethink.com.cn/bl_buy.php?productcode=HP0226"
																													target="_blank"><img
																														src="./images/xiaoche_hide.gif" border="0"></a></td>
																											</tr>
																										</tbody>
																									</table></td>
																								<td align="center" width="25%" valign="top"><table
																										width="95%" border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td height="125" align="center"
																													valign="bottom">
																													<table width="105" border="0"
																														cellpadding="0" cellspacing="0"
																														bgcolor="#FFFFFF">
																														<tbody>
																															<tr>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																															</tr>
																															<tr>
																																<td height="103" align="center"><a
																																	href="http://www.bluethink.com.cn/bl_pi.php?productcode=SR0035"><img
																																		src="./images/sr0035.gif" width="90"
																																		height="90" border="0"></a></td>
																															</tr>
																															<tr>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td height="80" align="center"><a
																													href="http://www.bluethink.com.cn/bl_pi.php?productcode=SR0035"
																													class="mingcheng1">施华洛世奇Angelic 套装
																														1106375</a><br> 商城价格：<font
																													color="#CC0000">￥1360.00</font><br> <a
																													href="http://www.bluethink.com.cn/bl_buy.php?productcode=SR0035"
																													target="_blank"><img
																														src="./images/xiaoche_hide.gif" border="0"></a></td>
																											</tr>
																										</tbody>
																									</table></td>
																								<td align="center" width="25%" valign="top"><table
																										width="95%" border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td height="125" align="center"
																													valign="bottom">
																													<table width="105" border="0"
																														cellpadding="0" cellspacing="0"
																														bgcolor="#FFFFFF">
																														<tbody>
																															<tr>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																															</tr>
																															<tr>
																																<td height="103" align="center"><a
																																	href="http://www.bluethink.com.cn/bl_pi.php?productcode=SR0033"><img
																																		src="./images/sr0033.gif" width="90"
																																		height="90" border="0"></a></td>
																															</tr>
																															<tr>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td height="80" align="center"><a
																													href="http://www.bluethink.com.cn/bl_pi.php?productcode=SR0033"
																													class="mingcheng1">施华洛世奇Tyra套装 1179736</a><br>
																													商城价格：<font color="#CC0000">￥1360.00</font><br>
																													<a
																													href="http://www.bluethink.com.cn/bl_buy.php?productcode=SR0033"
																													target="_blank"><img
																														src="./images/xiaoche_hide.gif" border="0"></a></td>
																											</tr>
																										</tbody>
																									</table></td>
																								<td align="center" width="25%" valign="top"><table
																										width="95%" border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td height="125" align="center"
																													valign="bottom">
																													<table width="105" border="0"
																														cellpadding="0" cellspacing="0"
																														bgcolor="#FFFFFF">
																														<tbody>
																															<tr>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																															</tr>
																															<tr>
																																<td height="103" align="center"><a
																																	href="http://www.bluethink.com.cn/bl_pi.php?productcode=SR0032"><img
																																		src="./images/sr0032.gif" width="90"
																																		height="90" border="0"></a></td>
																															</tr>
																															<tr>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td height="80" align="center"><a
																													href="http://www.bluethink.com.cn/bl_pi.php?productcode=SR0032"
																													class="mingcheng1">施华洛世奇Blues 套装5076892</a><br>
																													商城价格：<font color="#CC0000">￥1600.00</font><br>
																													<a
																													href="http://www.bluethink.com.cn/bl_buy.php?productcode=SR0032"
																													target="_blank"><img
																														src="./images/xiaoche_hide.gif" border="0"></a></td>
																											</tr>
																										</tbody>
																									</table></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td height="5"></td>
																			</tr>
																			<tr>
																				<td height="23" align="center"
																					background="./images/bg_03.gif">
																					<table width="95%" border="0" cellspacing="0"
																						cellpadding="0">
																						<tbody>
																							<tr>
																								<td width="3%"></td>
																								<td width="87%"><a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=49"
																									class="white"><b>穿戴</b></a> &nbsp; <a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=49&amp;sub_cat_code=265"
																									class="white">围巾手套</a></td>
																								<td width="10%" align="right"><a
																									href="http://www.bluethink.com.cn/bl_catalog.php?pma_code=108&amp;cat_code=49"
																									class="white"><b>MORE..</b></a></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<table width="100%" border="0" cellpadding="0"
																						cellspacing="0" style="border-collapse: collapse">
																						<tbody>
																							<tr align="center" bgcolor="#f6fdff">
																								<td align="center" width="25%" valign="top"><table
																										width="95%" border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td height="125" align="center"
																													valign="bottom">
																													<table width="105" border="0"
																														cellpadding="0" cellspacing="0"
																														bgcolor="#FFFFFF">
																														<tbody>
																															<tr>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																															</tr>
																															<tr>
																																<td height="103" align="center"><a
																																	href="http://www.bluethink.com.cn/bl_pi.php?productcode=ER0014"><img
																																		src="./images/er0014.gif" width="90"
																																		height="90" border="0"></a></td>
																															</tr>
																															<tr>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td height="80" align="center"><a
																													href="http://www.bluethink.com.cn/bl_pi.php?productcode=ER0014"
																													class="mingcheng1">鄂尔多斯100%山羊绒围巾（150*30cm）灰枚..</a><br>
																													商城价格：<font color="#CC0000">￥599.00</font><br>
																													<a
																													href="http://www.bluethink.com.cn/bl_buy.php?productcode=ER0014"
																													target="_blank"><img
																														src="./images/xiaoche_hide.gif" border="0"></a></td>
																											</tr>
																										</tbody>
																									</table></td>
																								<td align="center" width="25%" valign="top"><table
																										width="95%" border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td height="125" align="center"
																													valign="bottom">
																													<table width="105" border="0"
																														cellpadding="0" cellspacing="0"
																														bgcolor="#FFFFFF">
																														<tbody>
																															<tr>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																															</tr>
																															<tr>
																																<td height="103" align="center"><a
																																	href="http://www.bluethink.com.cn/bl_pi.php?productcode=ER0013"><img
																																		src="./images/er0013.gif" width="90"
																																		height="90" border="0"></a></td>
																															</tr>
																															<tr>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td height="80" align="center"><a
																													href="http://www.bluethink.com.cn/bl_pi.php?productcode=ER0013"
																													class="mingcheng1">鄂尔多斯100%山羊绒围巾（150*30cm）蓝白..</a><br>
																													商城价格：<font color="#CC0000">￥599.00</font><br>
																													<a
																													href="http://www.bluethink.com.cn/bl_buy.php?productcode=ER0013"
																													target="_blank"><img
																														src="./images/xiaoche_hide.gif" border="0"></a></td>
																											</tr>
																										</tbody>
																									</table></td>
																								<td align="center" width="25%" valign="top"><table
																										width="95%" border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td height="125" align="center"
																													valign="bottom">
																													<table width="105" border="0"
																														cellpadding="0" cellspacing="0"
																														bgcolor="#FFFFFF">
																														<tbody>
																															<tr>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																															</tr>
																															<tr>
																																<td height="103" align="center"><a
																																	href="http://www.bluethink.com.cn/bl_pi.php?productcode=ER0012"><img
																																		src="./images/er0012.gif" width="90"
																																		height="90" border="0"></a></td>
																															</tr>
																															<tr>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td height="80" align="center"><a
																													href="http://www.bluethink.com.cn/bl_pi.php?productcode=ER0012"
																													class="mingcheng1">鄂尔多斯100%山羊绒围巾（150*30cm）黑白..</a><br>
																													商城价格：<font color="#CC0000">￥599.00</font><br>
																													<a
																													href="http://www.bluethink.com.cn/bl_buy.php?productcode=ER0012"
																													target="_blank"><img
																														src="./images/xiaoche_hide.gif" border="0"></a></td>
																											</tr>
																										</tbody>
																									</table></td>
																								<td align="center" width="25%" valign="top"><table
																										width="95%" border="0" cellspacing="0"
																										cellpadding="0">
																										<tbody>
																											<tr>
																												<td height="125" align="center"
																													valign="bottom">
																													<table width="105" border="0"
																														cellpadding="0" cellspacing="0"
																														bgcolor="#FFFFFF">
																														<tbody>
																															<tr>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																																<td rowspan="3"><img
																																	src="./images/line_l.gif" width="1"
																																	height="105"></td>
																															</tr>
																															<tr>
																																<td height="103" align="center"><a
																																	href="http://www.bluethink.com.cn/bl_pi.php?productcode=ER0011"><img
																																		src="./images/er0011.gif" width="90"
																																		height="90" border="0"></a></td>
																															</tr>
																															<tr>
																																<td><img src="./images/line_r.gif"
																																	width="103" height="1"></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																											<tr>
																												<td height="80" align="center"><a
																													href="http://www.bluethink.com.cn/bl_pi.php?productcode=ER0011"
																													class="mingcheng1">鄂尔多斯100%山羊绒围巾（150*30cm）黑白..</a><br>
																													商城价格：<font color="#CC0000">￥599.00</font><br>
																													<a
																													href="http://www.bluethink.com.cn/bl_buy.php?productcode=ER0011"
																													target="_blank"><img
																														src="./images/xiaoche_hide.gif" border="0"></a></td>
																											</tr>
																										</tbody>
																									</table></td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td height="5"></td>
																			</tr>
																			<tr>
																				<td height="5"></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
														</tbody>
													</table> <!--end-->
												</td>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td style="border-top: 1px solid #E2E2E2" bgcolor="#E6E6E6">
									<table border="0" width="95%" cellspacing="0" cellpadding="0"
										style="border-collapse: collapse" align="center">
										<tbody>
											<tr>
												<td align="center"><a
													href="http://www.bluethink.com.cn/help.php#用户注册">用户注册</a></td>
												<td align="center"><a
													href="http://www.bluethink.com.cn/help.php#购物帮助">购物帮助</a></td>
												<td align="center"><a
													href="http://www.bluethink.com.cn/help.php#如何下单">如何下单</a></td>
												<td align="center"><a
													href="http://www.bluethink.com.cn/help.php#定单查询">定单查询</a></td>
												<td align="center"><a
													href="http://www.bluethink.com.cn/help.php#用户资料">用户资料</a></td>
												<td align="center"><a
													href="http://www.bluethink.com.cn/help.php#常见问题">常见问题</a></td>
												<td align="center"><a
													href="http://www.bluethink.com.cn/help.php#蓝派礼券">蓝派礼券</a></td>
												<td align="center"><a
													href="http://www.bluethink.com.cn/help.php#保修与退换">保修退换</a></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td align="center" bgcolor="#F6FDFF"
									style="border-top: 1px solid #E2E2E2">
									<table border="0" cellpadding="0" cellspacing="0"
										style="border-collapse: collapse" bordercolor="#111111">
										<tbody>
											<tr>
												<td align="center" width="90%">E-mail:<a
													href="mailto:bluex@bluethink.com.cn" class="th">bluex@bluethink.com.cn</a>&nbsp;
													服务热线电话:010-88572820<br> <a
													href="http://www.bluethink.com.cn/" class="th">bluethink.com.cn</a>&nbsp;
													京ICP证020380号
												</td>
												<td align="center" width="10%"><img
													src="./images/biaoshi.gif" border="0" width="28"
													height="35"></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table></td>
			</tr>
		</tbody>
	</table>
</body>
</html>