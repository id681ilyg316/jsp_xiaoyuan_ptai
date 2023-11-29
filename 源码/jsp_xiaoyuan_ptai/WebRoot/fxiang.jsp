<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.CommDAO"%>
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
                
                
                
                
                
                                <%
                                CommDAO dao = new CommDAO();
                                String id = request.getParameter("id");
                                HashMap jjmap = dao.getmap(id,"secondhand");
                               
                                 %>
                
                 <jsp:include page="left.jsp"></jsp:include>
                
                
                
                
                
                
                
                
                
                <TD valign="top">
                
                
                <form action="/xiaoyuan_ptai/xiaoyuan_ptai?ac=regmember" onSubmit="return check();" name="f1" enctype="multipart/form-data" >
                <TABLE 
                          width="92%" border=0 align="center" cellPadding=0 cellSpacing=0>
                  <TBODY>
                    <TR>
                      <TD><TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                          <TBODY>
                            <TR>
                              <TD height=10 colSpan=2></TD>
                            </TR>
                            <TR>
                              <TD width=228 background="xiaoyuan_ptai_files/ny_y3.jpg" height="37" align="left">
                              
                             <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;信息详情</strong>                              </TD>
                              <TD 
                                background=xiaoyuan_ptai_files/ny_ybj.jpg>&nbsp;</TD>
                            </TR>
                          </TBODY>
                      </TABLE></TD>
                    </TR>
                    <TR>
                      <TD height=10 align="center">
                         </TD>
                    </TR>
                    <TR>
                      <TD class=css vAlign=top align=left><TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                          <TBODY>
                            <TR>
                              <TD class=css height=32 align=left>
                                <center>
                                <strong>
                                <% out.print(jjmap.get("title")); %>
                                </strong>
                                <br />
                                <%="信息发布人:" +jjmap.get("uname") %>&nbsp; 
                                <%="发布时间:"+ jjmap.get("savetime") %>
                                <br />
                               
                               <IMG 
                              border=0 src="upfile/<%=jjmap.get("filename") %>"  
                              height=124>
                               
                                
                                
                                <br />
                               
                                             
                                </center>
    
  <%
  if(Info.getUser(request)!=null&&jjmap.get("infotype").equals("二手交易")){
  String car = request.getParameter("car");
  if(car!=null)
  {
  HashMap extmap = new HashMap();
  extmap.put("status","车内");
  new CommDAO().insert(request,response,"proscar",extmap,true,false);
  %>
  <script type="text/javascript">
  window.location.replace("/xiaoyuan_ptai/fxiang.jsp?id=<%=id%>");
  </script>
  <%
  }
   %>                             
   <a href="javascript:add();"><font color=#804000><strong>[放入购物车]</strong></font></a><br />
   
   <script type="text/javascript">
   function add(){
   popheight = 430;
  pop("num.jsp?f=f&car=car&id=<%=id %>","请输入数量",260,60);
  }
  </script>
   
   <%} %>  
   
   
物品类别 : <%=jjmap.get("wptype") %>
<br />                              
物品说明 : <%=jjmap.get("wpbei") %>
<br />
联系人 :   <%=jjmap.get("lxr") %>
<br />   
联系电话 :    <%=jjmap.get("lxtel") %> 
<br />
 
联系地址 : <%=jjmap.get("lxaddrs") %>      
<br /> 
联系QQ :  <%=jjmap.get("lxqq") %>   
<br />
<%=request.getParameter("x")==null?"物品价格":"新旧程度" %> :  <%=jjmap.get("price") %>    

<br />
           
                                 
                                 
                                
                                
                                </TD>
                              </TR>
                          </TBODY>
                      </TABLE>
                      
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
</script>
<%
List<HashMap> list = dao.select("select * from members");
String unames = "";
for(HashMap map:list)
{
unames+=map.get("uname")+",";
}
 %>
<script type="text/javascript">
<!--
function check()
{
var uname = document.getElementById("uname").value;
if('<%=unames%>'.indexOf(uname)>-1)
{
alert("用户名已存在");
return false;
}
}
//-->
</script>
<script language=javascript src='/xiaoyuan_ptai/js/popup.js'></script>