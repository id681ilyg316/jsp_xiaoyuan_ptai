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
<form  action="membercx.jsp"  name="f1" method="post">
<table width="99.8%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="3%" height="19" valign="bottom">&nbsp;&nbsp;&nbsp;</td>
                <td width="97%" valign="bottom"><span class="STYLE1"> 注册用户管理</span></td>
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
    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" class="mytab"   onmouseover="changeto()"  onmouseout="changeback()">
      
      <tr>
        <td colspan=11 height="30"   align="left" bgcolor="#FFFFFF" class="STYLE19">
          <label></label>&nbsp;&nbsp;&nbsp;
<% 
String pusername = request.getParameter("username")==null?"":request.getParameter("username"); 
String startusername = request.getParameter("startusername")==null?"":request.getParameter("startusername"); 
String endusername = request.getParameter("endusername")==null?"":request.getParameter("endusername"); 
String ptruename = request.getParameter("truename")==null?"":request.getParameter("truename"); 
String starttruename = request.getParameter("starttruename")==null?"":request.getParameter("starttruename"); 
String endtruename = request.getParameter("endtruename")==null?"":request.getParameter("endtruename"); 
   %>

<%
 HashMap mmm = new HashMap();%> 
&nbsp;&nbsp;用户名 &nbsp;:&nbsp; <input type=text class=''  size=15 name='username' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;姓名 &nbsp;:&nbsp; <input type=text class=''  size=15 name='truename' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<input type=submit class='' value='查询信息' /> &nbsp;&nbsp;<input type=button   class=''  value='添加信息' onclick="add();" /> &nbsp;&nbsp;</td>
        </tr>
      
      
      <tr bgcolor="#F3F8F7">
        <td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;" >用户名</td>
<td height="30" align="center"   style="background-color: #F3F8F7;color:#344B50;" >姓名</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;" >性别</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;" >QQ</td>
<td height="30" align="center"   style="background-color: #F3F8F7;color:#344B50;" >电话号码</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;" >email</td>
<td height="30" align="center"   style="background-color: #F3F8F7;color:#344B50;" >家道地址</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;" >用户类别</td>
<td height="30" align="center"   style="background-color: #F3F8F7;color:#344B50;" >注册时间</td>
<td height="30" align="center"   style="background-color: #F3F8F7;color:#344B50;" >操作</td>
        </tr>
      
       
      <% 
new CommDAO().delete(request,"users"); 
if(request.getParameter("usernameid1")!=null){ 
 new CommDAO().commOper("update users set username ='' where id="+request.getParameter("usernameid1"));  
} 
if(request.getParameter("usernameid2")!=null){ 
 new CommDAO().commOper("update users set username ='' where id="+request.getParameter("usernameid2"));  
} 
String sql = "select * from users where 1=1 " ;
 if(!pusername.equals("")){ 
 sql+= " and username like'%"+pusername+"%' " ;
 }  
 if(!startusername.equals("")){  
 mmm.put("startusername",startusername) ;
 sql+= " and username >'"+startusername+"' " ;
 }  
 if(!endusername.equals("")){  
 mmm.put("endusername",endusername) ;
 sql+= " and username <'"+Info.getDay(endusername,1)+"' " ;
 }  
 if(!ptruename.equals("")){ 
 sql+= " and truename like'%"+ptruename+"%' " ;
 }  
 if(!starttruename.equals("")){  
 mmm.put("starttruename",starttruename) ;
 sql+= " and truename >'"+starttruename+"' " ;
 }  
 if(!endtruename.equals("")){  
 mmm.put("endtruename",endtruename) ;
 sql+= " and truename <'"+Info.getDay(endtruename,1)+"' " ;
 }  
  sql +="  and (1!=1 " ; 
  sql +="  or  usertype like'%会员%' " ;
  sql +="  ) ";
  sql +=" order by id desc ";
String url = "membercx.jsp?1=1&username="+pusername+"&truename="+ptruename+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr>

        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("username")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("truename")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("sex")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("qq")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("phoneno")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("email")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("dizhi")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("usertype")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("savetime")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><a href="javascript:update('<%=map.get("id")%>')">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="membercx.jsp?scid=<%=map.get("id")%>">删除</a></td>
</tr>
<%}%>
     
      
      
      
      
    </table></td>
  </tr>
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan=11 align="center" class="STYLE19">${ page.info}</td>
        </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>


<script language=javascript src='/xiaoyuan_ptai/js/ajax.js'></script>
<% 
mmm.put("username",pusername); 
mmm.put("truename",ptruename); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/xiaoyuan_ptai/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/xiaoyuan_ptai/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('memberxg.jsp?id='+no,'信息修改',550,378) 
}
</script> 
<script language=javascript> 
function add(){ 
pop('membertj.jsp','信息添加',550,378) 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
