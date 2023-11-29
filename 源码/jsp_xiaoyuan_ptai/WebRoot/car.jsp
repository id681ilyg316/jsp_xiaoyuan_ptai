<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<%@page import="util.Info"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0031)http://www.qyyqyj.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>大学生闲置物品交易平台</TITLE>
<LINK rel=stylesheet type=text/css 
href="style/css.css">

<STYLE type=text/css>BODY {
	BACKGROUND-IMAGE: none; MARGIN: 0px
}
</STYLE>
<LINK rel=stylesheet type=text/css href="xiaoyuan_ptai_files/style.css">
<STYLE type=text/css>.STYLE3 {
	COLOR: #333333; FONT-SIZE: 12px
}
A:link {
	TEXT-DECORATION: none
}
A:visited {
	TEXT-DECORATION: none
}
A:hover {
	TEXT-DECORATION: none
}
A:active {
	TEXT-DECORATION: none
}
</STYLE>

<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 8.00.6001.19222"></HEAD>
<%
 String clear=request.getParameter("clear");
 if(clear!=null)
 {
 new CommDAO().commOper("delete from proscar where uname='"+Info.getUser(request).get("username")+"'");
 }
%>
                       
<% 
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
ext.put("infotype","物品租借");
ext.put("uname",Info.getUser(request)==null?"":Info.getUser(request).get("username")); 
new CommDAO().insert(request,response,"secondhand",ext,true,false); 
String key=request.getParameter("key")==null?"":request.getParameter("key"); 
%>
<BODY>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=1002 align=center>
  <TBODY>
  <TR>
    <TD background=xiaoyuan_ptai_files/bj.jpg align=middle>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=800>
        <TBODY>
       
       
       
       
       
       
       
       <jsp:include page="top.jsp"></jsp:include>
                  
                  
                  
                  
                  
                  
                  
                  
        <TR>
          <TD vAlign=top>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                
                
                
                
                
                
                 <jsp:include page="left.jsp"></jsp:include>
                
                
                
                
                
                
                
                
                
                <TD height="308" valign="top"><div align="left"> 
                 
                 
                </div><form  action="car.jsp"  onSubmit="return checkform()"  name="f1" ><div align="left"> 
                </div><TABLE 
                          width="92%" border=0 align="center" cellPadding=0 cellSpacing=0>
                  <TBODY>
                    <TR>
                      <TD><TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                          <TBODY>
                            <TR>
                              <TD height=10 colSpan=2 align="left"><br></TD>
                            </TR>
                            <TR>
                              <TD width=228 background="xiaoyuan_ptai_files/ny_y3.jpg" height="37" align="left">
                              
                             <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;购物车</strong>                              </TD>
                              <TD 
                                background=xiaoyuan_ptai_files/ny_ybj.jpg>&nbsp;</TD>
                            </TR>
                          </TBODY>
                      </TABLE></TD>
                    </TR>
                    <TR>
                      <TD height=20>&nbsp;</TD>
                    </TR>
                    <TR>
                      
                      
                      
                      
                      
                      
                         <%
                         new CommDAO().delete(request,"proscar");
                              String ukey = request.getParameter("ukey")==null?"":request.getParameter("ukey"); 
        PageManager pageManager = PageManager.getPage("car.jsp",25, request);
	    pageManager.doList("select * from proscar where uname='"+Info.getUser(request).get("username")+"' and status='车内' order by id desc");
	    PageManager bean= (PageManager)request.getAttribute("page");
	    ArrayList<HashMap> nlist=(ArrayList)bean.getCollection();
	    
	   int tot = 0;
	    for(HashMap m :nlist)
	    {
	    tot+=(Integer.parseInt(m.get("price").toString())*Integer.parseInt(m.get("nums").toString()));
                            %>
                      
                      <TD class=css vAlign=top align=left width="33.3%"><TABLE   border=0 cellPadding=0 cellSpacing=0    >
                          <TBODY>
                           
                           
                           
           <TR>
           <TD   width="19%" height=38 rowspan="3" 
           align=left vAlign=center class=css><A 
             href="fxiang.jsp?x=x&id=<%=m.get("id") %>"><IMG 
             border=0 src="upfile/<%=m.get("filename") %>"   
             height=54 width="59" style="padding-right: 5px"></A></TD>
           <TD   width="87%" height="19" 
           align=left vAlign=center class=css>
            <%=m.get("pname") %> 
           <a href="javascript:update('<%=m.get("id") %>')">(*<%=m.get("nums") %>) </a> 
             </TD>
            </TR>
         <TR>
           <TD height="19" 
           align=left vAlign=center class=css>
           <font color="orange">
           
           发布人:<%=m.get("touname") %>       </font>           </TD>
         </TR>
         
         
         <TR>
           <TD height="19" 
           align=left vAlign=center class=css>
           <font color="orange"> 
           价格:<%=m.get("price") %>         
           
           &nbsp;
           
           <a href="car.jsp?did=<%=m.get("id") %>"><font color=gray>移出</gray></a>
           
           
           
             </font>           </TD>
         </TR>
          
           
                               
                           
                          </TBODY>
                      </TABLE></TD>
                      
                       <%} %>
                      
                      
                      
                      
                      
                      
                      
                      
                      
                       </TR>
                       <tr>
                       <td height="42" align="center" colspan="20">
                       
                       共计 : <%=tot %> 元
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="car.jsp?clear=clear">清空购物车</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="javascript:fs();">发送订单</a>
                       <script type="text/javascript">
                       function fs()
                       {
                       popheight="300";
                       pop('fs.jsp','信息发送',550,216) 
                       }
                       </script>
                       </td>
                       </tr>
                  </TBODY>
                </TABLE>
                </form>
                
                
                
                
                
                
                
                
                
                
                
                </TD>
              </TR></TBODY></TABLE>
              
              
              </TD></TR>
       
       
       
       
       
       
      <jsp:include page="foot.jsp"></jsp:include>
      
      
      
      
      
      
      
      
      
      </TABLE></TD></TR></TBODY></TABLE>
      
<SCRIPT type=text/javascript charset=utf-8 
src="xiaoyuan_ptai_files/2462870.jss"></SCRIPT>


</BODY></HTML>
<script type="text/javascript">
<!--
<%if(request.getAttribute("suc")!=null){%>
alert("操作成功");
<%}%>
//-->
</script> <script language=javascript src='/xiaoyuan_ptai/js/My97DatePicker/WdatePicker.js'></script>
 
<script language=javascript src='/xiaoyuan_ptai/js/ajax.js'></script>
<script language=javascript src='/xiaoyuan_ptai/js/popup.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
 function checkform(){  
var titleobj = document.getElementById("title");  
if(titleobj.value==""){  
document.getElementById("clabeltitle").innerHTML="&nbsp;&nbsp;<font color=red>请输入标题</font>";  
return false;  
}else{
document.getElementById("clabeltitle").innerHTML="  ";  
}  
  
var lxrobj = document.getElementById("lxr");  
if(lxrobj.value==""){  
document.getElementById("clabellxr").innerHTML="&nbsp;&nbsp;<font color=red>请输入联系人</font>";  
return false;  
}else{
document.getElementById("clabellxr").innerHTML="  ";  
}  
  
var lxtelobj = document.getElementById("lxtel");  
if(lxtelobj.value==""){  
document.getElementById("clabellxtel").innerHTML="&nbsp;&nbsp;<font color=red>请输入联系电话</font>";  
return false;  
}else{
document.getElementById("clabellxtel").innerHTML="  ";  
}  
  
var lxqqobj = document.getElementById("lxqq");  
if(lxqqobj.value!=""){  
if(lxqqobj.value.length>12||isNaN(lxqqobj.value)){ 
document.getElementById("clabellxqq").innerHTML="&nbsp;&nbsp;<font color=red>联系QQ必须为12位以内数字</font>";  
return false;
}else{  
document.getElementById("clabellxqq").innerHTML="";  
}  
}  
var priceobj = document.getElementById("price");  
if(priceobj.value!=""){  
if(isNaN(priceobj.value)){  
document.getElementById("clabelprice").innerHTML="&nbsp;&nbsp;<font color=red>价格只能是数字</font>";  
return false;
}else{  
document.getElementById("clabelprice").innerHTML="";  
}  
}  
return true;   
}   
</script>  
<script type="text/javascript">
<!--
function update(no)
{
popheight=310;
pop("upnum.jsp?id="+no,"修改数量",260,60);
}
//-->
</script>