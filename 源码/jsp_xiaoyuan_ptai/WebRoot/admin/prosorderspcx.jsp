<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.PageManager"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
 %>
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
<form  action="prosorderspcx.jsp"  name="f1" method="post">
<table width="99.8%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="3%" height="19" valign="bottom">&nbsp;&nbsp;&nbsp;</td>
                <td width="97%" valign="bottom"><span class="STYLE1"> 已收到订单</span></td>
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
String puname = request.getParameter("uname")==null?"":request.getParameter("uname"); 
String startuname = request.getParameter("startuname")==null?"":request.getParameter("startuname"); 
String enduname = request.getParameter("enduname")==null?"":request.getParameter("enduname"); 
String pddinfo = request.getParameter("ddinfo")==null?"":request.getParameter("ddinfo"); 
String startddinfo = request.getParameter("startddinfo")==null?"":request.getParameter("startddinfo"); 
String endddinfo = request.getParameter("endddinfo")==null?"":request.getParameter("endddinfo"); 
   %>

<%
 HashMap mmm = new HashMap();%> 
&nbsp;&nbsp;发送人 &nbsp;:&nbsp; <input type=text class=''  size=20 name='uname' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;订单信息 &nbsp;:&nbsp; <input type=text class=''  size=20 name='ddinfo' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<input type=submit class='' value='查询信息' /> &nbsp; &nbsp; &nbsp; <br /></td>
        </tr>
      
      
      <tr bgcolor="#F3F8F7">
        <td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >发送人</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >订单信息</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >联系人</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >联系电话</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >联系QQ</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >送货地址</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >付款方式</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >状态</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >发送时间</td>
<td height="30" align="center"  style="background-color: #F3F8F7;color:#344B50;"  >操作</td>
        </tr>
      
       
      <% 
new CommDAO().delete(request,"prosorders"); 
if(request.getParameter("statusid1")!=null){ 
 new CommDAO().commOper("update prosorders set status ='已发货' where id="+request.getParameter("statusid1"));  
} 
if(request.getParameter("statusid2")!=null){ 
 new CommDAO().commOper("update prosorders set status ='已拒绝' where id="+request.getParameter("statusid2"));  
} 
String sql = "select * from prosorders where 1=1 " ;
 if(!puname.equals("")){ 
 sql+= " and uname like'%"+puname+"%' " ;
 }  
 if(!startuname.equals("")){  
 mmm.put("startuname",startuname) ;
 sql+= " and uname >'"+startuname+"' " ;
 }  
 if(!enduname.equals("")){  
 mmm.put("enduname",enduname) ;
 sql+= " and uname <'"+Info.getDay(enduname,1)+"' " ;
 }  
 if(!pddinfo.equals("")){ 
 sql+= " and ddinfo like'%"+pddinfo+"%' " ;
 }  
 if(!startddinfo.equals("")){  
 mmm.put("startddinfo",startddinfo) ;
 sql+= " and ddinfo >'"+startddinfo+"' " ;
 }  
 if(!endddinfo.equals("")){  
 mmm.put("endddinfo",endddinfo) ;
 sql+= " and ddinfo <'"+Info.getDay(endddinfo,1)+"' " ;
 }  
   sql +=" order by id desc ";
String url = "prosorderspcx.jsp?1=1&uname="+puname+"&ddinfo="+pddinfo+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr>

        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("uname")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("ddinfo")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("lxr")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("lxtel")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("lxqq")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("addrs")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("fkfs")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("status")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("savetime")%></td>
        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><a href="prosorderspcx.jsp?value=已发货&statusid1=<%=map.get("id")%>">发货</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="prosorderspcx.jsp?value=已拒绝&statusid2=<%=map.get("id")%>">拒绝</a>     </td>
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
mmm.put("uname",puname); 
mmm.put("ddinfo",pddinfo); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/xiaoyuan_ptai/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/xiaoyuan_ptai/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('prosordersxg.jsp?id='+no,'信息修改',550,280) 
}
</script> 
<script language=javascript> 
function add(){ 
pop('prosorderstj.jsp','信息添加',550,280) 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
