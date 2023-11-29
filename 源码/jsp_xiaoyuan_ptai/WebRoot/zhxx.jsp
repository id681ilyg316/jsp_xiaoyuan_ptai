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

<STYLE type=text/css>
BODY {
	BACKGROUND-IMAGE: none; MARGIN: 0px
}
</STYLE>
<LINK rel=stylesheet type=text/css href="xiaoyuan_ptai_files/style.css">
<STYLE type=text/css>
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
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
ext.put("saver",Info.getUser(request)==null?"":Info.getUser(request).get("username")); 
new CommDAO().insert(request,response,"fwly",ext,true,false); 
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
                
                
                
                
                
                
                
                
                
                <TD valign="top">
                
                
                <form  action="zhxx.jsp?f=f&tglparentid=<%=tglparentid%>"  onSubmit="return checkform();" name="f1"   >
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
                              
                             <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二手交易</strong>                              </TD>
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
        PageManager pageManager = PageManager.getPage("zhxx.jsp",5, request);
	    pageManager.doList("select * from fwly  order by id desc");
	    PageManager bean= (PageManager)request.getAttribute("page");
	    ArrayList<HashMap> nlist=(ArrayList)bean.getCollection();
	    
	   
	    for(HashMap m :nlist)
	    {
          HashMap umap = new HashMap();
         List<HashMap> ulist = new CommDAO().select("select * from users where username='"+m.get("saver")+"'");
         if(ulist.size()>0)umap= ulist.get(0);
          %>
           <TR>
           
           <TD   width="17%" rowspan="2" 
           align=center vAlign=center class=css>
        
           <A 
             href="fwxiang.jsp?id=<%=m.get("id") %>"><IMG 
             border=0 src="/xiaoyuan_ptai/upfile/<%=umap.get("filename") %>"  
             height=54></A>
         
         </TD>
            <TD   width="83%" height="19" 
           align=left vAlign=center class=css><a 
             href="fwxiang.jsp?id=<%=m.get("id") %>"><%=m.get("saver")%> : <%=m.get("title") %>&nbsp;&nbsp;<span class="hu_txt"><%=m.get("savetime").toString() %></span></a></TD>
           </TR>
         
         
         <TR>
           <TD height="19" 
           align=left vAlign=center class=css><font color="gray"><%=Info.subStr( Info.filterStrIgnoreCase(m.get("content").toString(),"<",">")  ,60)  %> </font></TD>
         </TR>
           
                               
                            <%} %>
                          </TBODY>
                      </TABLE>
                      <TR>
                      <TD height=33 colSpan=2 align="center"><label>${page.info }</label></TD>
                      </TR>
                    <TR>
                      <TD colSpan=2 align=middle>
                      
                       <% 
                      if(Info.getUser(request)!=null){
                      %>
                      <table width="582" border="0" align="center" cellpadding="0" cellspacing="0">
                      
                       <tr>
                          <td height="30" colspan="2" align="center"><label>
                            <strong>发布二手交易信息</strong></label></td>
                        </tr>
                      
                        <tr>
                          <td width="119" height="30" align="center">标题</td>
                          <td width="413" height="30" align="left"><input type=text  class='' id='title' name='title' size=55 /><label id='clabeltitle' /></td>
                        </tr>
<tr>
                           
                          <td colspan="2"   height="30" align="left"><%=Info.fck(215,"")%></td>
                        </tr>

                        <tr>
                          <td height="30" colspan="2" align="center"><label>
                            <input type="submit" name="button" id="button" value="提交">
                            &nbsp;&nbsp;&nbsp;
                            <input type="reset" name="button2" id="button2" value="重置">
                          </label></td>
                        </tr>
                      </table>
                      
                      <%} %>
                      </TD>
                    </TR>
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
 
<script language=javascript src='/xiaoyuan_ptai/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/xiaoyuan_ptai/js/popup.js'></script>
<script language=javascript src='/xiaoyuan_ptai/js/ajax.js'></script>
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
  
return true;   
}   
</script>  
