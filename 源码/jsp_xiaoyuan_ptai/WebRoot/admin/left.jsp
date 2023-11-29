<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE3 {
	font-size: 12px;
	color: #435255;
}
.STYLE4 {font-size: 12px}
.STYLE5 {font-size: 12px; font-weight: bold; }
-->
</style></head>
<script language=javascript>
function show(no)
{
for(var i=1;i<20;i++)
{
var a = document.getElementById(no+"@"+i);
if(a==null)
{
continue;
}
if(a.style.display=="")
{
a.style.display="none";
}else{
a.style.display="";
}
}

}
</script>
<body>

  <%
    HashMap map = (HashMap)session.getAttribute("admin");
    
    %>

  
 
  

<table width="147"  border="0" align="center" cellpadding="0" cellspacing="0">
<tr  onClick="show('2')"  style="cursor:hand">
    <td height="23" background="images/main_34.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9%">&nbsp;</td>
        <td width="83%"><div align="center" class="STYLE5">信息管理</div></td>
        <td width="8%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td valign="top"><div align="center">
  
  <%
  HashMap user = (HashMap)session.getAttribute("admin");
      String utype = user.get("usertype").toString();
   %>
   
   
    <table width="82%" border="0" id="2@1"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('prosorderspcx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">已收到订单</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      <table width="82%" border="0" id="2@2"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('sprosorderspcx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">已发送订单</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
    
      
       <table width="82%" border="0" id="2@3"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('hbnewscx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">优惠活动管理</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
       
     
       <table width="82%" border="0" id="2@4"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('zxxscx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">二手交易管理</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
       <table width="82%" border="0" id="2@5"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('ywywcx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">物品租借管理</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
       <table width="82%" border="0" id="2@6"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('wpflcx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">物品分类管理</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
      <table width="82%" border="0" id="2@10"  style="display: "   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('messagescx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">留言板管理</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
       
      
      
      </div></td></tr>
  
  

  
  
  

  <tr  onClick="show('4')"  style="cursor:hand">
    <td height="23" background="images/main_34.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9%">&nbsp;</td>
        <td width="83%"><div align="center" class="STYLE5">基本信息管理</div></td>
        <td width="8%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td valign="top"><div align="center">
  
  
  
       <table width="82%" border="0" id="4@1"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('wzgg.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">网站公告</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
       
       <table width="82%" border="0" id="4@2"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('wzjj.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">网站简介</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
      <table width="82%" border="0" id="4@3"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('yqljcx.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">友情链接</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
      
       <table width="82%" border="0" id="4@4"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('gywm.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">关于我们</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
      
        <table width="82%" border="0" id="4@5"  style="display: none"  align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="23" onClick="go('userscx.jsp')" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">管理员信息维护</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
       
      
      
         
        <table width="82%" border="0" id="4@6"  style="display: none"  align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="23" onClick="go('membercx.jsp')" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">注册用户管理</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
     
      
     
    
     
    <table width="82%" border="0" id="4@9"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('pusersxg.jsp?id=<%=map.get("id") %>&ms=ms')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">修改个人信息</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
    
    
    <table width="82%" border="0" id="4@10"  style="display: none"   align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33" height="28"><img src="images/main_46.gif" width="28" height="28"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td onClick="go('uppass.jsp')" height="23" class="STYLE4" style="cursor:hand" onMouseOver="this.style.backgroundImage='url(images/tab_bg.gif)';this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle=''">修改登录密码</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      
      
      
      
      
      </div></td></tr>
  

  
  
</table>
</body>
</html>
<script language="javascript">
        function go(purl)
        {
        parent.document.getElementsByTagName("iframe")[1].src=(purl);
        }
        </script>
