<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
ext.put("usertype","管理员"); 
new CommDAO().insert(request,response,"users",ext,true,true); 
%>
<body>
<form  action="userstj.jsp?f=f&tglparentid=<%=tglparentid%>"  name="f1" onSubmit="return checkform()">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

<tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="3%" height="19" valign="bottom">&nbsp;</td>
                <td width="97%" valign="bottom"><span class="STYLE1"> 添加管理员&nbsp;&nbsp;</span></td>
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
        <td width="21%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">用户名</td>
        <td width="79%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;
        <input type=text  class='' id='username' name='username' size=35 /><label id='clabelusername' /></td>
        </tr>
<tr>
        <td width="21%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">密码</td>
        <td width="79%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;
        <input type=text  class='' id='userpass' name='userpass' size=35 /><label id='clabeluserpass' /></td>
        </tr>
<tr>
        <td width="21%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">姓名</td>
        <td width="79%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;
        <input type=text  class='' id='truename' name='truename' size=35 /><label id='clabeltruename' /></td>
        </tr>
<tr>
        <td width="21%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">性别</td>
        <td width="79%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;
        <span id="sexdanx"><label><input type=radio checked=checked name='sex' id='sex' value='男' />&nbsp;男 </label>
<label><input type=radio  name='sex' id='sex' value='女' />&nbsp;女 </label>
</span></td>
        </tr>
<tr>
        <td width="21%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">QQ</td>
        <td width="79%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;
        <input type=text  class='' id='qq' name='qq' size=35 /><label id='clabelqq' /></td>
        </tr>
<tr>
        <td width="21%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">电话号码</td>
        <td width="79%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;
        <input type=text  class='' id='phoneno' name='phoneno' size=35 /><label id='clabelphoneno' /></td>
        </tr>
<tr>
        <td width="21%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">email</td>
        <td width="79%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;
        <input type=text  class='' id='email' name='email' size=35 /><label id='clabelemail' /></td>
        </tr>
<tr>
        <td width="21%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">家庭住址</td>
        <td width="79%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;
        <input type=text  class='' id='dizhi' name='dizhi' size=35 /><label id='clabeldizhi' /></td>
        </tr>
<tr>
        <td width="21%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">头像</td>
        <td width="79%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;
        <%=Info.getImgUpInfo(65)%></td>
        </tr>

	   <tr>
        <td height="30" colspan="2" align="center" bgcolor="#FFFFFF" class=""><label>
          <input type="submit" name="Submit"  value="提交信息" />
          &nbsp;&nbsp;&nbsp;
          <input type=button value='返回上页' onclick='popclose();' />
</label></td>
        </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html> 
<script languagexiaoyuan_ptaipt src='/greensite/js/My97DatePicker/WdatePicker.js'></script>
<script languagxiaoyuan_ptaiipt src='/greensite/js/popup.js'></script>
<script languaxiaoyuan_ptaiript src='/greensite/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
 function checkform(){  
var usernameobj = document.getElementById("username");  
if(usernameobj.value==""){  
document.getElementById("clabelusername").innerHTML="&nbsp;&nbsp;<font color=red>请输入用户名</font>";  
return false;  
}else{
document.getElementById("clabelusername").innerHTML="  ";  
}  
  
var usernameobj = document.getElementById("username");  
if(usernameobj.value!="")xiaoyuan_ptaiajax = new AJAX();
ajax.post("/greensite/factory/checkno.jsp?table=users&col=username&value="+usernameobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelusername").innerHTML="&nbsp;&nbsp;<font color=red>用户名已存在</font>";  
return false;
}else{document.getElementById("clabelusername").innerHTML="  ";  
}  
}  
var userpassobj = document.getElementById("userpass");  
if(userpassobj.value==""){  
document.getElementById("clabeluserpass").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";  
return false;  
}else{
document.getElementById("clabeluserpass").innerHTML="  ";  
}  
  
var truenameobj = document.getElementById("truename");  
if(truenameobj.value==""){  
document.getElementById("clabeltruename").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";  
return false;  
}else{
document.getElementById("clabeltruename").innerHTML="  ";  
}  
  
var qqobj = document.getElementById("qq");  
if(qqobj.value!=""){  
if(qqobj.value.length>12||isNaN(qqobj.value)){ 
document.getElementById("clabelqq").innerHTML="&nbsp;&nbsp;<font color=red>QQ必须为12位以内数字</font>";  
return false;
}else{  
document.getElementById("clabelqq").innerHTML="";  
}  
}  
var phonenoobj = document.getElementById("phoneno");  
if(phonenoobj.value!=""){  
if(phonenoobj.value.length>11||phonenoobj.value.length<8||isNaN(phonenoobj.value)){ 
document.getElementById("clabelphoneno").innerHTML="&nbsp;&nbsp;<font color=red>电话号码必须为8-11位数字</font>";  
return false;
}else{  
document.getElementById("clabelphoneno").innerHTML="";  
}  
}  
var emailobj = document.getElementById("email");  
if(emailobj.value!=""){  
var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;  
if(!myreg.test(emailobj.value)){ 
document.getElementById("clabelemail").innerHTML="&nbsp;&nbsp;<font color=red>email格式不正确</font>";  
return false;
}else{  
document.getElementById("clabelemail").innerHTML="";  
}  
}  
return true;   
}   
</script>  
