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
 String scwid = request.getParameter("scwid")==null?"":request.getParameter("scwid");
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
ext.put("infotype","二手交易");
ext.put("uname",Info.getUser(request)==null?"":Info.getUser(request).get("username")); 
if(scwid.equals(""))
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
                
                
                
                
                
                
                
                
                
                <TD valign="top"><div align="left"> 
                 
                 
                </div><form  action="scj.jsp?f=f&tglparentid=<%=tglparentid%>"  onSubmit="return checkform()"  name="f1" ><div align="left"> 
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
                              
                             <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;收藏夹</strong>                              </TD>
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
                      <TD class=css vAlign=top align=left><TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                          <TBODY>
                           
                          
                              <%
        
       
         
        new CommDAO().delete(request,"scj");
        
        String ukey = request.getParameter("ukey")==null?"":request.getParameter("ukey"); 
        String typename = request.getParameter("typename")==null?"":request.getParameter("typename"); 
        PageManager pageManager = PageManager.getPage("scj.jsp?ukey="+ukey+"&typename="+typename,7, request);
       
	    pageManager.doList("select * from secondhand where id in(select wid from scj where uname='"+Info.getUser(request).get("uname")+"' and sctype in('物品租借','二手交易'))   order by id desc");
	    PageManager bean= (PageManager)request.getAttribute("page");
	    ArrayList<HashMap> nlist=(ArrayList)bean.getCollection();
	    
	   
	    for(HashMap m :nlist)
	    {
	    HashMap scmap = new CommDAO().select("select * from scj where uname='"+Info.getUser(request).get("uname")+"' and wid='"+m.get("id")+"'").get(0);
       %>
           <TR>
           <TD   width="13%" height=38 rowspan="3" 
           align=left vAlign=center class=css><A 
             href="fxiang.jsp?id=<%=m.get("id") %>"><IMG 
             border=0 src="upfile/<%=m.get("filename") %>"  
             height=54 width="59"></A></TD>
           <TD   width="87%" height="19" 
           align=left vAlign=center class=css><a 
             href="fxiang.jsp?id=<%=m.get("id") %>"><%=m.get("title") %>&nbsp;&nbsp;<span class="hu_txt"><%=m.get("savetime").toString() %></span></a>
             
             &nbsp;&nbsp;
             
             <a href="scj.jsp?scid=<%=scmap.get("id") %>">[移出收藏夹]</a>
               
             </TD>
            </TR>
         <TR>
           <TD height="19" 
           align=left vAlign=center class=css>
           <font color="orange">
           
           联系人:<%=m.get("lxr") %>
           &nbsp;  
           联系QQ:<%=m.get("lxqq") %> 
           &nbsp; 
           价格:<%=m.get("price") %>         
           &nbsp; 
           类别:<%=m.get("wptype") %>  
           
             </font>           </TD>
         </TR>
         
         
         
         <TR>
           <TD height="19" 
           align=left vAlign=center class=css>
           <font color="gray">
           
           物品说明:<%=Info.subStr(m.get("wpbei").toString(),30)  %>           </font>           </TD>
         </TR>
           
                               
                            <%} %>
                          </TBODY>
                      </TABLE>
                      <TR>
                      <TD height=33 colSpan=2 align="center"><label>${page.info }</label></TD>
                      </TR>
                  </TBODY></TABLE>
              
              
              </TD></TR>
       
       
       
       
       
       
      
      
      
      
      
      
      
     
      </TABLE></TD></TR></TBODY></TABLE>
      <jsp:include page="foot.jsp"></jsp:include>
<SCRIPT type=text/javascript charset=utf-8 
src="xiaoyuan_ptai_files/2462870.jss"></SCRIPT>


</BODY></HTML>
  <script language=javascript src='/xiaoyuan_ptai/js/My97DatePicker/WdatePicker.js'></script>
 
<script language=javascript src='/xiaoyuan_ptai/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
 