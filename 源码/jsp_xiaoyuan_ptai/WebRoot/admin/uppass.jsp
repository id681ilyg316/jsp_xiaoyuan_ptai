<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
<!--

.mytab {
	font-size: 12px;
	width:100%;
	line-height: 150%;
	text-decoration: none;
	word-wrap: break-word;
	border:#DBE6E3 solid 1px; border-bottom:0; border-right:0; border-left:#DBE6E3 solid 1px;
	line-height:175%; 
	margin:1px 1px;
	margin-left: 0px;	
}
.mytab td{ padding:2px 5px; border:#DBE6E3 solid 1px; border-left:0; border-top:0;}


body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}
.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}
.STYLE6 {color: #000000; font-size: 12; }
.STYLE10 {color: #000000; font-size: 12px; }
.STYLE19 {
	color: #344b50;
	font-size: 12px;
}
.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}
.STYLE22 {
	font-size: 12px;
	color: #295568;
}
-->
</style>

<script>
var  highlightcolor='#d5f4fe';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[0].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[0].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[0].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[0].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>


</head>

<body>
<form action="/xiaoyuan_ptai/xiaoyuan_ptai?ac=uppass" name="f1" >
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="6%" height="19" valign="bottom"><div align="center"><img src="images/tb.gif" width="14" height="14" /></div></td>
                <td width="94%" valign="bottom"><span class="STYLE1"> 修改登录密码</span></td>
              </tr>
            </table></td>
            <td><div align="right"><span class="STYLE1">&nbsp;</span><span class="STYLE1"> &nbsp;</span></div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="mytab" onMouseOver="changeto()"  onmouseout="changeback()">
      <tr>
        <td width="16%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">请输入原密码</td>
        <td width="27%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19"><label>
           &nbsp;<input type="password" name="olduserpass" />
        </label></td>
        </tr>
	   <tr>
        <td width="16%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">请输入新密码</td>
        <td width="27%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19"> &nbsp;<input type="password" name="userpass" /></td>
        </tr>
	   <tr>
        <td width="16%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">请重复新密码</td>
        <td width="27%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input type="password" name="copyuserpass" /></td>
        </tr>
	   <tr>
        <td height="30" colspan="2" align="center" bgcolor="#FFFFFF" class=""><label>
           <input type="submit" name="Submit" onMouseDown="checkk();" value="提交信息" />&nbsp;&nbsp;&nbsp;
          <input type="reset" name="Submit2" value="重新填写" />
</label></td>
        </tr>
    </table></td>
  </tr> 
</table>
</form>
</body>
</html>
 <script type="text/javascript">
   function checkk()
   {
    if(f1.olduserpass.value=="")
   {
   alert("请输入原密码");
   return;
   }
   if(f1.userpass.value=="")
   {
   alert("请输入新密码");
   return;
   }
   if(f1.copyuserpass.value!=f1.userpass.value)
   {
   alert("两次密码输入不一致");
   return;
   }
   }
   </script>
   
   <script language="javascript">
<%
String error = (String)request.getAttribute("error");
if(error!=null)
{
%>
alert("原密码错误");
<%}%>
</script>
<script language="javascript">
<%
String suc = (String)request.getAttribute("suc");
if(suc!=null)
{
%>
alert("操作成功");
<%}%>
</script>
