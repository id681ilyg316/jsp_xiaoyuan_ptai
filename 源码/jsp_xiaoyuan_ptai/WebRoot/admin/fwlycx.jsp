﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.PageManager"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

<script language="javascript" src="/xiaoyuan_ptai/js/popup.js"></script>

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
<form  action="fwlycx.jsp"  name="f1" method="post">
<table width="99.8%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="3%" height="19" valign="bottom">&nbsp;&nbsp;&nbsp;</td>
                <td width="97%" valign="bottom"><span class="STYLE1"> 二手交易信息管理</span></td>
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
    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" class="mytab"  onmouseover="changeto()"  onmouseout="changeback()">
      
      <tr>
        <td colspan=5 height="30"   align="left" bgcolor="#FFFFFF" class="STYLE19">
          <label></label>&nbsp;&nbsp;&nbsp;
<% 
String ptitle = request.getParameter("title")==null?"":request.getParameter("title"); 
String starttitle = request.getParameter("starttitle")==null?"":request.getParameter("starttitle"); 
String endtitle = request.getParameter("endtitle")==null?"":request.getParameter("endtitle"); 
String psaver = request.getParameter("saver")==null?"":request.getParameter("saver"); 
String startsaver = request.getParameter("startsaver")==null?"":request.getParameter("startsaver"); 
String endsaver = request.getParameter("endsaver")==null?"":request.getParameter("endsaver"); 
   %>

<%
 HashMap mmm = new HashMap();%> 
&nbsp;&nbsp;标题 &nbsp;:&nbsp; <input type=text class=''  size=15 name='title' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;发布人 &nbsp;:&nbsp; <input type=text class=''  size=15 name='saver' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<input type=submit class='' value='查询信息' /> &nbsp;&nbsp;<input type=button   class='' value='添加信息' onclick="window.location.replace('fwlytj.jsp')" /> &nbsp;&nbsp;</td>
        </tr>
      
      
      <tr bgcolor="#F3F8F7">
        <td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;" >标题</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;" >发布人</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;" >发布时间</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;" >操作</td>
        </tr>
      
       
      <% 
new CommDAO().delete(request,"fwly"); 
if(request.getParameter("titleid1")!=null){ 
 new CommDAO().commOper("update fwly set title ='' where id="+request.getParameter("titleid1"));  
} 
if(request.getParameter("titleid2")!=null){ 
 new CommDAO().commOper("update fwly set title ='' where id="+request.getParameter("titleid2"));  
} 
String sql = "select * from fwly where 1=1 " ;
 if(!ptitle.equals("")){ 
 sql+= " and title like'%"+ptitle+"%' " ;
 }  
 if(!starttitle.equals("")){  
 mmm.put("starttitle",starttitle) ;
 sql+= " and title >'"+starttitle+"' " ;
 }  
 if(!endtitle.equals("")){  
 mmm.put("endtitle",endtitle) ;
 sql+= " and title <'"+Info.getDay(endtitle,1)+"' " ;
 }  
 if(!psaver.equals("")){ 
 sql+= " and saver like'%"+psaver+"%' " ;
 }  
 if(!startsaver.equals("")){  
 mmm.put("startsaver",startsaver) ;
 sql+= " and saver >'"+startsaver+"' " ;
 }  
 if(!endsaver.equals("")){  
 mmm.put("endsaver",endsaver) ;
 sql+= " and saver <'"+Info.getDay(endsaver,1)+"' " ;
 }  
  sql +=" order by id desc ";
String url = "fwlycx.jsp?1=1&title="+ptitle+"&saver="+psaver+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr>

        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("title")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("saver")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("savetime")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><a href="fwlyxg.jsp?id=<%=map.get("id")%>">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="fwlycx.jsp?scid=<%=map.get("id")%>">删除</a></td>
</tr>
<%}%>
     
      
      
      
      
    </table></td>
  </tr>
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan=5 align="center" class="STYLE19">${ page.info}</td>
        </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>


<script language=javascript src='/xiaoyuan_ptai/js/ajax.js'></script>
<% 
mmm.put("title",ptitle); 
mmm.put("saver",psaver); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/xiaoyuan_ptai/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/xiaoyuan_ptai/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('fwlyxg.jsp?id='+no,'信息修改',500,280) 
}
</script> 
<script language=javascript> 
function add(){ 
pop('fwlytj.jsp','信息添加',500,280) 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
