<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
.STYLE7 {font-size: 12}

-->
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js"></script>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
<script>
    function uploadPic(){
    	
    	var oUploadPic=document.getElementById("uploadPic");
    	oUploadPic.style.display="block";
    }
    
    function upload(){
    	
    	 $("#uploadImage").ajaxForm();
         $("#uploadImage").ajaxSubmit(function(data){
        	   var result=eval("("+data+")")
               if(result.status==200){
            	   alert(result.message);
            	   $("#pic").val(result.path);
               }else if(result.status==400){
            	   alert(result.message);
               }
		 });
    }
</script>
</head>

<body>


<div id="uploadPic" style="width:500px;height:100px;border:1px solid #ffffff;z-index:auto;display:none">
  <form id="uploadImage" action="/crm/uploadPic" method="post" enctype="multipart/form-data">
               上传头像:<input type="file" name="pics"><input type="button" value="上传" onclick="upload();">
  </form>  
     
</div>
<table width="100%" border="0"  bgcolor="#E7FAD0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="30"><img src="${pageContext.request.contextPath}/images/tab_03.gif" width="15" height="30" /></td>
        <td width="1101" background="${pageContext.request.contextPath}/images/tab_05.gif"><img src="${pageContext.request.contextPath}/images/311.gif" width="16" height="16" /> <span class="STYLE4">添加人员</span></td>
        <td width="281" background="${pageContext.request.contextPath}/images/tab_05.gif"><table border="0" align="right" cellpadding="0" cellspacing="0">
            
        </table></td>
        <td width="14"><img src="${pageContext.request.contextPath}/images/tab_07.gif" width="14" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>
	    <form action="${pageContext.request.contextPath}/person/addPerson" method="post">
			 <table align="center">
				<tr>
					<td align="right">姓名:</td>
					<td><input type="text" name="name"/></td>
				</tr>
				<tr>
					<td align="right">性别:</td>
					<td>
					   <input type="radio" name="gender" value="男" checked/>男
					   <input type="radio" name="gender" value="女"/>女
					</td>
				</tr>
				<tr>
					<td align="right">年龄:</td>
					<td><input type="text" name="age"/></td>
				</tr>
				<tr>
					<td align="right">出生日期:</td>
					<td>
					   <input type="text" name="birthday" id="birthday"  onfocus="WdatePicker({el:'birthday'})" readonly="readonly"/>
					   
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="注册"/></td>
				</tr>
			 </table>
		 </form>
	</td>
  </tr>
</table>
</body>
</html>
