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
 

<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 8.00.6001.19222"></HEAD>
<BODY>
 
       
       <%
        CommDAO dao = new CommDAO();
        String id = request.getParameter("id");
        HashMap jjmap = dao.getmap(id,"secondhand");
       
         %> 
       
    
       
       
       
        <TR>
          <TD height=70 vAlign=center align=right>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD height="59" align="center" >
                 <form style="display: inline" name="f2" method="post">
                请输入数量 :
                  <label></label>
                  &nbsp;
                  <input type="text" size="5" name="nums"  value=1 onkeyup='clearNoNum(this);' onblur='clearNoNum(this);' onmouseup='clearNoNum(this);' style="border: 1px solid #D6E9F3;" id="textfield">&nbsp;
                 &nbsp; <input type="button" onClick="search();" name="button" id="button" value="确定">
                 &nbsp;&nbsp;&nbsp;&nbsp;
                 <script type="text/javascript">
                 function search()
                 { 
                 var nums = f2.nums.value;
                 if(nums=="")nums="1";
                 parent.location.replace("fxiang.jsp?f=f&car=car&id=<%=id %>&filename=<%=jjmap.get("filename")%>&pname=<%=jjmap.get("title")%>&price=<%=jjmap.get("price") %>&touname=<%=jjmap.get("uname") %>&uname=<%=Info.getUser(request).get("username") %>&nums="+nums); 
                 
                 }
                 </script>
                 </form>
                </label></TD>
                </TR>
          </TBODY></TABLE></TD></TR>
        
</BODY></HTML>
 <script language=javascript src='/xiaoyuan_ptai/js/popup.js'></script>

