/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2021-04-21 08:16:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.person;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class add_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>???????????????</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write("body {\r\n");
      out.write("\tmargin-left: 0px;\r\n");
      out.write("\tmargin-top: 0px;\r\n");
      out.write("\tmargin-right: 0px;\r\n");
      out.write("\tmargin-bottom: 0px;\r\n");
      out.write("}\r\n");
      out.write(".STYLE1 {font-size: 12px}\r\n");
      out.write(".STYLE4 {\r\n");
      out.write("\tfont-size: 12px;\r\n");
      out.write("\tcolor: #1F4A65;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a:link {\r\n");
      out.write("\tfont-size: 12px;\r\n");
      out.write("\tcolor: #06482a;\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("a:visited {\r\n");
      out.write("\tfont-size: 12px;\r\n");
      out.write("\tcolor: #06482a;\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("a:hover {\r\n");
      out.write("\tfont-size: 12px;\r\n");
      out.write("\tcolor: #FF0000;\r\n");
      out.write("\ttext-decoration: underline;\r\n");
      out.write("}\r\n");
      out.write("a:active {\r\n");
      out.write("\tfont-size: 12px;\r\n");
      out.write("\tcolor: #FF0000;\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write(".STYLE7 {font-size: 12}\r\n");
      out.write("\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/My97DatePicker/WdatePicker.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("var  highlightcolor='#eafcd5';\r\n");
      out.write("//??????clickcolor?????????win??????????????????????????????,?????????#xxxxxx??????????????????,????????????????????????:(\r\n");
      out.write("var  clickcolor='#51b2f6';\r\n");
      out.write("function  changeto(){\r\n");
      out.write("source=event.srcElement;\r\n");
      out.write("if  (source.tagName==\"TR\"||source.tagName==\"TABLE\")\r\n");
      out.write("return;\r\n");
      out.write("while(source.tagName!=\"TD\")\r\n");
      out.write("source=source.parentElement;\r\n");
      out.write("source=source.parentElement;\r\n");
      out.write("cs  =  source.children;\r\n");
      out.write("//alert(cs.length);\r\n");
      out.write("if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!=\"nc\"&&cs[1].style.backgroundColor!=clickcolor)\r\n");
      out.write("for(i=0;i<cs.length;i++){\r\n");
      out.write("\tcs[i].style.backgroundColor=highlightcolor;\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function  changeback(){\r\n");
      out.write("if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id==\"nc\")\r\n");
      out.write("return\r\n");
      out.write("if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)\r\n");
      out.write("//source.style.backgroundColor=originalcolor\r\n");
      out.write("for(i=0;i<cs.length;i++){\r\n");
      out.write("\tcs[i].style.backgroundColor=\"\";\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function  clickto(){\r\n");
      out.write("source=event.srcElement;\r\n");
      out.write("if  (source.tagName==\"TR\"||source.tagName==\"TABLE\")\r\n");
      out.write("return;\r\n");
      out.write("while(source.tagName!=\"TD\")\r\n");
      out.write("source=source.parentElement;\r\n");
      out.write("source=source.parentElement;\r\n");
      out.write("cs  =  source.children;\r\n");
      out.write("//alert(cs.length);\r\n");
      out.write("if  (cs[1].style.backgroundColor!=clickcolor&&source.id!=\"nc\")\r\n");
      out.write("for(i=0;i<cs.length;i++){\r\n");
      out.write("\tcs[i].style.backgroundColor=clickcolor;\r\n");
      out.write("}\r\n");
      out.write("else\r\n");
      out.write("for(i=0;i<cs.length;i++){\r\n");
      out.write("\tcs[i].style.backgroundColor=\"\";\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/jquery-3.4.1.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/jquery.form.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("    function uploadPic(){\r\n");
      out.write("    \t\r\n");
      out.write("    \tvar oUploadPic=document.getElementById(\"uploadPic\");\r\n");
      out.write("    \toUploadPic.style.display=\"block\";\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    function upload(){\r\n");
      out.write("    \t\r\n");
      out.write("    \t $(\"#uploadImage\").ajaxForm();\r\n");
      out.write("         $(\"#uploadImage\").ajaxSubmit(function(data){\r\n");
      out.write("        \t   var result=eval(\"(\"+data+\")\")\r\n");
      out.write("               if(result.status==200){\r\n");
      out.write("            \t   alert(result.message);\r\n");
      out.write("            \t   $(\"#pic\").val(result.path);\r\n");
      out.write("               }else if(result.status==400){\r\n");
      out.write("            \t   alert(result.message);\r\n");
      out.write("               }\r\n");
      out.write("\t\t });\r\n");
      out.write("    }\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"uploadPic\" style=\"width:500px;height:100px;border:1px solid #ffffff;z-index:auto;display:none\">\r\n");
      out.write("  <form id=\"uploadImage\" action=\"/crm/uploadPic\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
      out.write("               ????????????:<input type=\"file\" name=\"pics\"><input type=\"button\" value=\"??????\" onclick=\"upload();\">\r\n");
      out.write("  </form>  \r\n");
      out.write("     \r\n");
      out.write("</div>\r\n");
      out.write("<table width=\"100%\" border=\"0\"  bgcolor=\"#E7FAD0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td height=\"30\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"15\" height=\"30\"><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/tab_03.gif\" width=\"15\" height=\"30\" /></td>\r\n");
      out.write("        <td width=\"1101\" background=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/tab_05.gif\"><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/311.gif\" width=\"16\" height=\"16\" /> <span class=\"STYLE4\">????????????</span></td>\r\n");
      out.write("        <td width=\"281\" background=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/tab_05.gif\"><table border=\"0\" align=\"right\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("            \r\n");
      out.write("        </table></td>\r\n");
      out.write("        <td width=\"14\"><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/images/tab_07.gif\" width=\"14\" height=\"30\" /></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>\r\n");
      out.write("\t    <form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/person/addPerson\" method=\"post\">\r\n");
      out.write("\t\t\t <table align=\"center\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td align=\"right\">??????:</td>\r\n");
      out.write("\t\t\t\t\t<td><input type=\"text\" name=\"name\"/></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td align=\"right\">??????:</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t   <input type=\"radio\" name=\"gender\" value=\"???\" checked/>???\r\n");
      out.write("\t\t\t\t\t   <input type=\"radio\" name=\"gender\" value=\"???\"/>???\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td align=\"right\">??????:</td>\r\n");
      out.write("\t\t\t\t\t<td><input type=\"text\" name=\"age\"/></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td align=\"right\">????????????:</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t   <input type=\"text\" name=\"birthday\" id=\"birthday\"  onfocus=\"WdatePicker({el:'birthday'})\" readonly=\"readonly\"/>\r\n");
      out.write("\t\t\t\t\t   \r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\" align=\"center\"><input type=\"submit\" value=\"??????\"/></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t </table>\r\n");
      out.write("\t\t </form>\r\n");
      out.write("\t</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
