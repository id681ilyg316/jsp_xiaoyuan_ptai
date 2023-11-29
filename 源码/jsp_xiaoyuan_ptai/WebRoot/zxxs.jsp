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
 String fxwid = request.getParameter("fxwid")==null?"":request.getParameter("fxwid");
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
ext.put("infotype","二手交易");
ext.put("uname",Info.getUser(request)==null?"":Info.getUser(request).get("username")); 
if(scwid.equals("")&&fxwid.equals(""))
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
                 
                 
                </div><form  action="zxxs.jsp?f=f&tglparentid=<%=tglparentid%>"  onSubmit="return checkform()"  name="f1" ><div align="left"> 
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
        
       
         
        
        
        String ukey = request.getParameter("ukey")==null?"":request.getParameter("ukey"); 
        String typename = request.getParameter("typename")==null?"":request.getParameter("typename"); 
        PageManager pageManager = PageManager.getPage("zxxs.jsp?ukey="+ukey+"&typename="+typename,5, request);
        if(typename.equals(""))
	    pageManager.doList("select * from secondhand where infotype='二手交易' and uname like '%"+ukey+"%'  and  title like'%"+key+"%'   order by id desc");
	    else
	    pageManager.doList("select * from secondhand where infotype='二手交易' and wptype like '%"+typename+"%'   order by id desc");
	    PageManager bean= (PageManager)request.getAttribute("page");
	    ArrayList<HashMap> nlist=(ArrayList)bean.getCollection();
	    
	   
	    for(HashMap m :nlist)
	    {
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
             
             
              <%
             if(Info.getUser(request)!=null)
             {
             if(new CommDAO().select("select * from scj where uname='"+Info.getUser(request).get("uname")+"' and sctype='二手交易' and wid ='"+m.get("id")+"'").size()==0){
             %>
            <a href="zxxs.jsp?f=f&scwid=<%=m.get("id")%>">[收藏]</a>&nbsp;&nbsp;
             <%
             }
             else{%>
             [已收藏]
             <%}
             }
              %>
              
              
               <%
             if(Info.getUser(request)!=null)
             {
             if(new CommDAO().select("select * from scj where uname='"+Info.getUser(request).get("uname")+"' and sctype='二手分享' and wid ='"+m.get("id")+"'").size()==0){
             %>
            <a href="zxxs.jsp?f=f&fxwid=<%=m.get("id")%>">[分享]</a>&nbsp;&nbsp;
             <%
             }
             else{%>
             [已分享]
             <%}
             }
              %>
             
             
             <%
             if(!ukey.equals(""))
             {
             %>
            <a href="javascript:update('<%=m.get("id")%>')">修改</a>
             <%
             }
              %>
             
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
                    <TR>
                      <TD colSpan=2 align=middle>
                      
                      
                      <% 
                      if(Info.getUser(request)!=null){
                      %>
                      <table width="512" border="0" align="center" cellpadding="0" cellspacing="0">
                       
                       <tr>
                          <td   height="30" colspan="2" align="center" style="cursor: hand"><strong>发布信息</strong></td>
                      </tr>
                        
                        <tr>
                          <td width="159" height="30" align="center">标题</td>
                          <td width="353" height="30" align="left"><input type=text  class='' id='title' name='title' size=35 /><label id='clabeltitle' /></td>
                        </tr>
                        
                         <tr>
                          <td width="159" height="30" align="center">物品类别</td>
                          <td width="353" height="30" align="left"><%=Info.getselect("wptype","wpfl","typename","1=1") %><label id='clabelwptype' /></td>
                        </tr>
                        
<tr>
                          <td width="159" height="30" align="center">物品说明</td>
                          <td width="353" height="30" align="left"><textarea  cols='35' class=''  name='wpbei'  ></textarea></td>
                        </tr>
<tr>
                          <td width="159" height="30" align="center">联系人</td>
                          <td width="353" height="30" align="left"><input type=text  class='' id='lxr' name='lxr' size=35 /><label id='clabellxr' /></td>
                        </tr>
<tr>
                          <td width="159" height="30" align="center">联系电话</td>
                          <td width="353" height="30" align="left"><input type=text  class='' id='lxtel' name='lxtel' size=35 /><label id='clabellxtel' /></td>
                        </tr>
<tr>
                          <td width="159" height="30" align="center">联系地址</td>
                          <td width="353" height="30" align="left"><input type=text  class='' id='lxaddrs' name='lxaddrs' size=35 /><label id='clabellxaddrs' /></td>
                        </tr>
<tr>
                          <td width="159" height="30" align="center">联系QQ</td>
                          <td width="353" height="30" align="left"><input type=text  class='' id='lxqq' name='lxqq' size=35 /><label id='clabellxqq' /></td>
                        </tr>
<tr>
                          <td width="159" height="30" align="center">价格</td>
                          <td width="353" height="30" align="left"><input type=text size='8' class=''  id='price'  name='price'         /><label id='clabelprice' /></td>
                        </tr>
<tr>
                          <td width="159" height="30" align="center">相关图片</td>
                          <td width="353" height="30" align="left"><%=Info.getImgUpInfo(65)%></td>
                        </tr>


                        <tr>
                          <td height="30" colspan="2" align="center"><label>
                            <input type="submit" name="button" id="button" value="提交">&nbsp;&nbsp;&nbsp;
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
      
      
      
      
      
      
      <script language=javascript> 
function update(no){ 
popheight="300";
pop('admin/zxxsxg.jsp?id='+no,'信息修改',550,390) 
}
</script> 
      
      
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


var wptypeobj = document.getElementById("wptype");  
if(wptypeobj.value==""){  
document.getElementById("clabelwptype").innerHTML="&nbsp;&nbsp;<font color=red>请输入物品类别</font>";  
return false;  
}else{
document.getElementById("clabelwptype").innerHTML="  ";  
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
 <%

if(!scwid.equals(""))
  {
  HashMap map = new HashMap();
  map.put("sctype","二手交易");
  map.put("uname",Info.getUser(request).get("uname"));
  map.put("wid",scwid);
  new CommDAO().insert(request,response,"scj",map,true,false);
  %>
  <script type="text/javascript">
<!--
window.location = "zxxs.jsp";
//-->
</script>
  <%
  }%>
  
  
   <%

if(!fxwid.equals(""))
  {
  HashMap map = new HashMap();
  map.put("sctype","二手分享");
  map.put("uname",Info.getUser(request).get("uname"));
  map.put("wid",fxwid);
  new CommDAO().insert(request,response,"scj",map,true,false);
  %>
  <script type="text/javascript">
<!--
window.location = "zxxs.jsp";
//-->
</script>
  <%
  }%>