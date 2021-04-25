<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
  <script type="text/javascript" src="/js/jquery-3.4.1.js"></script>
<style>
   *{padding :0px;
     margin :0px;}
   a{font-size:12px;text-decoration: none;}
</style>
  <script language="javascript">

      var t = null;

      t = setTimeout(time,1000);//开始执行

      function time()

      {
          clearTimeout(t);//清除定时器
          dt = new Date();
          var y=dt.getYear()+1900;
          var mm=dt.getMonth()+1;
          var d=dt.getDate();
          var weekday=["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];
          var day=dt.getDay();
          var h=dt.getHours();
          var m=dt.getMinutes();
          var s=dt.getSeconds();
          if(h<10){h="0"+h;}
          if(m<10){m="0"+m;}
          if(s<10){s="0"+s;}
          document.getElementById("timeShow").innerHTML =y+"年"+mm+"月"+d+"日"+weekday[day]+""+h+":"+m+":"+s+"";
          t = setTimeout(time,1000); //设定定时器，循环执行
      }

  </script>

</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;">
  <tr>
    <td height="9" style="line-height:9px; background-image:url(${pageContext.request.contextPath}/images/main_04.gif)"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="97" height="9" background="${pageContext.request.contextPath}/images/main_01.gif">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="47" background="${pageContext.request.contextPath}/images/main_09.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="38" height="47" background="${pageContext.request.contextPath}/images/main_06.gif">&nbsp;</td>
        <td width="59"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="29" background="${pageContext.request.contextPath}/images/main_07.gif">&nbsp;</td>
          </tr>
          <tr>
            <td height="18" background="${pageContext.request.contextPath}/images/main_14.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;">
              <tr>
                <td  style="width:1px;">&nbsp;</td>
                <td ><span class="STYLE1">${activeUser.username}</span></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="155" background="${pageContext.request.contextPath}/images/main_08.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" valign="bottom"><a href="">个人信息</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/exitSystem">退出系统</a></td>
          </tr>
        </table></td>
        <td width="200" background="${pageContext.request.contextPath}/images/main_11.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="11%" height="23">&nbsp;</td>
            <td width="89%" valign="bottom"><span class="STYLE1" style="font-size:12px;"><div id="timeShow" class="time1"></div></span></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="5" style="line-height:5px; background-image:url(${pageContext.request.contextPath}/images/main_18.gif)"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="180" background="${pageContext.request.contextPath}/images/main_16.gif"  style="line-height:5px;">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>

<map name="Map" id="Map"><area shape="rect" coords="3,1,49,22" href="#" /><area shape="rect" coords="52,2,95,21" href="#" /><area shape="rect" coords="102,2,144,21" href="#" /><area shape="rect" coords="150,1,197,22" href="#" /><area shape="rect" coords="210,2,304,20" href="#" /><area shape="rect" coords="314,1,361,23" href="#" /></map></body>
</html>
