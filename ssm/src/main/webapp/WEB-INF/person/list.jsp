<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE4 {
	font-size: 12px;
	color: #1F4A65;
	font-weight: bold;
}

a:link {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;

}
a:visited {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}
a:hover {
	font-size: 12px;
	color: #FF0000;
	text-decoration: underline;
}
a:active {
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}


-->
</style>

<script>
var  highlightcolor='#eafcd5';
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
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
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
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
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
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="30"><img src="${pageContext.request.contextPath}/images/tab_03.gif" width="15" height="30" /></td>
        <td width="1101" background="${pageContext.request.contextPath}/images/tab_05.gif"><img src="${pageContext.request.contextPath}/images/311.gif" width="16" height="16" /> <span class="STYLE4">用户列表</span></td>
        <td width="281" background="${pageContext.request.contextPath}/images/tab_05.gif"><table border="0" align="right" cellpadding="0" cellspacing="0">
            <tr>
              <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center">
                        <input type="checkbox" name="checkbox62" value="checkbox" />
                    </div></td>
                    <td class="STYLE1"><div  align="center">全选</div></td>
                  </tr>
              </table></td>
              <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="${pageContext.request.contextPath}/images/001.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center"><a href="${pageContext.request.contextPath}/person/add">新增</a></div></td>
                  </tr>
              </table></td>
              <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="${pageContext.request.contextPath}/images/114.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">修改</div></td>
                  </tr>
              </table></td>
              <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="${pageContext.request.contextPath}/images/083.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">删除</div></td>
                  </tr>
              </table></td>
            </tr>
        </table></td>
        <td width="14"><img src="${pageContext.request.contextPath}/images/tab_07.gif" width="14" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9" background="${pageContext.request.contextPath}/images/tab_12.gif">&nbsp;</td>
        <td bgcolor="#f3ffe3"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#c0de98" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
            <td width="6%" height="26" background="${pageContext.request.contextPath}/images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">选择</div></td>
            <td width="8%" height="18" background="${pageContext.request.contextPath}/images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">序号</div></td>
            <td width="10%" height="18" background="${pageContext.request.contextPath}/images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">姓名</div></td>
            <td width="5%" height="18" background="${pageContext.request.contextPath}/images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">性别</div></td>
              <td width="5%" height="18" background="${pageContext.request.contextPath}/images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">年龄</div></td>
            <td width="14%" height="18" background="${pageContext.request.contextPath}/images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">出生日期</div></td>
            <td width="7%" height="18" background="${pageContext.request.contextPath}/images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2">编辑</div></td>
            <td width="7%" height="18" background="${pageContext.request.contextPath}/images/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2">删除</div></td>
          </tr>
		  
		  <!--数据-->
	   <c:forEach var="person" items="${pageView.records}">
          <tr>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <input name="checkbox" type="checkbox" class="STYLE2" value="checkbox" />
            </div></td>
            <td height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="center" class="STYLE2 STYLE1">${person.id}</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">${person.name}</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">${person.gender}</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">${person.age}</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1"><fmt:formatDate value="${person.birthday}" pattern="yyyy-MM-dd"></fmt:formatDate></div></td>
            <td height="18" bgcolor="#FFFFFF">
			   <div align="center">
			      <span class="STYLE2">
			         <img src="${pageContext.request.contextPath}/images/037.gif" width="9" height="9" />
				  </span>
				  <span class="STYLE1">[</span>
				     <a href="${pageContext.request.contextPath}/person/getPersonById?id=${person.id}">编辑</a>
				  <span class="STYLE1">]</span>
				</div>
			</td>
            <td height="18" bgcolor="#FFFFFF">
			    <div align="center">
				   <span class="STYLE2">
				     <img src="${pageContext.request.contextPath}/images/010.gif" width="9" height="9" />
				   </span>
				   <span class="STYLE1">[</span>
				   <a href="${pageContext.request.contextPath}/person/deletePersonById?id=${person.id}">删除</a>
				   <span class="STYLE1">]</span>
				</div>
		    </td>
          </tr>
		  
		  </c:forEach>
		  
		  
        </table></td>
        <td width="9" background="${pageContext.request.contextPath}/images/tab_16.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="29"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="29"><img src="${pageContext.request.contextPath}/images/tab_20.gif" width="15" height="29" /></td>
        <td background="${pageContext.request.contextPath}/images/tab_21.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="25%" height="29" nowrap="nowrap">
			<span class="STYLE1">
                <span>共${pageView.totalrecords}条纪录，当前第${pageView.currentPage}/${pageView.totalPage}页，每页${pageView.pageSize}条纪录</span>
			</span></td>
            <td width="75%" valign="top" class="STYLE1"><div align="right">
              <table width="352" height="20" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="62" height="22" valign="middle">
				  <div align="right">
				    <!-- 分页数据 -->
                      <span><a href="${pageContext.request.contextPath}/person/show?currentPage=1">首页</a></span>
                      <c:if test="${pageView.currentPage<=1}">
                          <span><a href="${pageContext.request.contextPath}/person/show?currentPage=1">上一页</a></span>
                      </c:if>
                      <c:if test="${pageView.currentPage>1}">
                          <span><a href="${pageContext.request.contextPath}/person/show?currentPage=${pageView.currentPage-1}">上一页</a></span>
                      </c:if>
                      <c:if test="${pageView.currentPage<pageView.totalPage}">
                          <span><a href="${pageContext.request.contextPath}/person/show?currentPage=${pageView.currentPage+1}">下一页</a></span>
                      </c:if>
                      <c:if test="${pageView.currentPage>=pageView.totalPage}">
                          <span><a href="${pageContext.request.contextPath}/person/show?currentPage=${pageView.totalPage}">下一页</a></span>
                      </c:if>
                      <span><a href="${pageContext.request.contextPath}/person/show?currentPage=${pageView.totalPage}">尾页</a></span>
                  </div>
                  </td>
                 
                </tr>
              </table>
            </div></td>
          </tr>
        </table></td>
        <td width="14"><img src="${pageContext.request.contextPath}/images/tab_22.gif" width="14" height="29" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
    