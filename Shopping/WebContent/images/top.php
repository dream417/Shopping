document.write('<link href="/images/new.css" rel="stylesheet" type="text/css"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td valign="bottom" background="/images/bgtop01.gif"><table width="100%" border="0" cellpadding="0" cellspacing="0"><tr><td width="11%" align="center" class="mingcheng"><font color="#FFFFFF">IT周边</font></td><td width="89%" rowspan="2" class="white"><a href="javascript:pmto(\'103\')" class="white">手机数码</a>｜<a href="javascript:pmto(\'101\')" class="white">整机/外设</a>｜<a href="javascript:pmto(\'102\')" class="white">配件</a>｜<a href="javascript:pmto(\'109\')" class="white">个护健康</a>｜<a href="javascript:pmto(\'104\')" class="white">车载出行</a>｜<a href="javascript:pmto(\'105\')" class="white">钟表箱包</a>｜<a href="javascript:pmto(\'108\')" class="white"><font color="#ffff00"><b>穿戴配饰</b></font></a>｜<a href="javascript:pmto(\'106\')" class="white">日用家居</a>｜<a href="javascript:pmto(\'107\')" class="white">文体办公</a>｜<a href="javascript:pmto(\'110\')" class="white">书香文玩</a><br><a href="javascript:pmto(\'112\')" class="white">酒水食品</a></td></tr><tr><td valign="bottom"><img src="/images/bgtop02.gif" width="83" height="7"></td></tr></table></td></tr><tr><td background="/images/bgtop03.gif"><table width="100%"  border="0" cellspacing="0" cellpadding="0"><tr><td width="11%" align="center" class="mingcheng"><font color="#FFFFFF">日用礼品</font></td><td width="89%" class="white"></td></tr></table></td></tr><tr><td height="1"></td></tr><tr><td height="30" background="images/srcbg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="border-collapse:collapse"><form onsubmit="return Vsh(this)" action="bl_search.php" method="post"><tr><td width="6%" align="center"><img src="images/zoom.gif" width="20" height="31"></td><td align="left"><input onblur="if(this.value==\'\'){this.value=\'请输入您所要查找的商品名称\';}" style="FONT-SIZE: 9pt; COLOR: #555555" onfocus="if(this.value==\'请输入您所要查找的商品名称\'){this.value=\'\';}" maxLength="30" size="30" value="请输入您所要查找的商品名称" name="searchname"> <input onblur="if(this.value==\'\'){this.value=\'商品编号\';}" style="FONT-SIZE: 9pt; COLOR: #555555" onfocus="if(this.value==\'商品编号\'){this.value=\'\';}" maxLength="20" size="8" value="商品编号" name="searchcode"> <input style="POSITION:relative;TOP:2px" type="image" src="images/go.gif" border="0" width="20" height="17">&nbsp;&nbsp;<a href="bl_hisearch.php" class="th">高级</a></td><input type=hidden name=Bsearch value=Y></form><td align="right"><iframe frameborder=0 height="18" name=buysta src="buysta.php" width=305 scrolling="no"></iframe></td></tr></table></td></tr></table>');function Vsh(theForm)
{
	if ((theForm.searchname.value=="" || theForm.searchname.value=="请输入您所要查找的商品名称") && (theForm.searchcode.value=="" || theForm.searchcode.value=="商品编号"))
	{
	alert(" 请输入查询关键字。");
	theForm.searchname.focus();
	return (false);
	}
}

function pmto(pmid)
{
	url="/bl_pma.php?pma_code="+pmid;
	window.location.href=url;
}
