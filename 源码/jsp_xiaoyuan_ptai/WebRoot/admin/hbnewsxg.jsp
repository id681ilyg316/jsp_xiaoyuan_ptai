﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
.STYLE19 {
	color: #344b50;
	font-size: 12px;
}
-->
</style>
<script type="text/javascript" src="/xiaoyuan_ptai/js/popup.js"></script>
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

<% 
new CommDAO().delete(request,"hbnews"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"hbnews",ext,true,false); 
HashMap mmm = new CommDAO().getmap(id,"hbnews"); 
%>
<body>
<form  action="hbnewsxg.jsp?f=f&id=<%=mmm.get("id")%>"  name="f1" onSubmit="return checkform()">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

<tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="3%" height="19" valign="bottom">&nbsp;</td>
                <td width="97%" valign="bottom"><span class="STYLE1"> 修改活动信息&nbsp;&nbsp;</span></td>
              </tr>
            </table></td>
            <td> 
            
             
            
            </td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>


  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#a8c7ce"  class="mytab" onMouseOver="changeto()"  onmouseout="changeback()">
      <tr>
        <td width="21%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">活动标题</td>
        <td width="79%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;
        <input type=text  class='' id='title' name='title' size=35 /><label id='clabeltitle' /></td>
        </tr>
<tr>
        <td width="21%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">作者</td>
        <td width="79%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;
        <input type=text  class='' id='author' name='author' size=35 /><label id='clabelauthor' /></td>
        </tr>
<tr>
        <td width="21%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">相关图片</td>
        <td width="79%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;
        <%=Info.getImgUpInfo(65)%></td>
        </tr>
<tr>
        <td height="15" colspan="2" align="center" bgcolor="#FFFFFF" class="STYLE19"><strong>请输入内容</strong></td>
        </tr>
<tr>
  <td height="15" colspan="2" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=Info.fck(265,mmm.get("content").toString())%></td>
</tr>

	   <tr>
        <td height="30" colspan="2" align="center" bgcolor="#FFFFFF" class=""><label>
          <input type="submit" name="Submit"  value="提交信息" />
          &nbsp;&nbsp;&nbsp;
          <input type=button value='返回上页' onclick='window.location.replace("hbnewscx.jsp")' />
</label></td>
        </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html> 
<script language=javascript src='/xiaoyuan_ptai/js/My97DatePicker/WdatePicker.js'></script> 
<script language=javascript src='/xiaoyuan_ptai/js/ajax.js'></script> 
<script language=javascript src='/xiaoyuan_ptai/js/popup.js'></script> 
<%@page import="util.Info"%> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
</script>  
<script language=javascript >  
 function checkform(){  
var titleobj = document.getElementById("title");  
if(titleobj.value==""){  
document.getElementById("clabeltitle").innerHTML="&nbsp;&nbsp;<font color=red>请输入新闻标题</font>";  
return false;  
}else{ 
document.getElementById("clabeltitle").innerHTML="  ";  
}  
var authorobj = document.getElementById("author");  
if(authorobj.value==""){  
document.getElementById("clabelauthor").innerHTML="&nbsp;&nbsp;<font color=red>请输入作者</font>";  
return false;  
}else{ 
document.getElementById("clabelauthor").innerHTML="  ";  
}  
return true;   
}   
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
