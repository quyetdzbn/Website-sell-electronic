/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.78
 * Generated at: 2023-05-04 17:44:40 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\" integrity=\"sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"./fcss/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css\" integrity=\"sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("        <title>Đăng nhập</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"tieude-ttruot\">\n");
      out.write("            \n");
      out.write("                <div class=\"bieutuong\">\n");
      out.write("                    <a href=\"home\" class=\"bieutuong-kn\">NVT</a>\n");
      out.write("                </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"khung\">\n");
      out.write("            <div class=\"dang-nhap\">\n");
      out.write("                <form action=\"signin\" method=\"post\">\n");
      out.write("                    <p id=\"thongbao\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${mess}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                    <input class=\"oviet\" type=\"text\" name=\"taikhoan\" placeholder=\"Nhập tài khoản\" autocomplete=\"off\">\n");
      out.write("                    <input class=\"oviet\" type=\"password\" name=\"matkhau\" placeholder=\"Nhập mật khẩu\" autocomplete=\"off\">\n");
      out.write("                    <input type=\"submit\" value=\"Đăng nhập\" name=\"dangnhap\" class=\"nut-bam\">\n");
      out.write("                </form>\n");
      out.write("<!--                <div class=\"remember-forgot\">\n");
      out.write("                    <div class=\"remember\">\n");
      out.write("                        <input id=\"remember\" value=\"Remember\" type=\"checkbox\" name=\"remember\"> <span>Nhớ mật khẩu?</span>\n");
      out.write("                    </div>\n");
      out.write("                    <a href=\"#\" id=\"forgot\">Quên mật khẩu?</a>\n");
      out.write("                </div>-->\n");
      out.write("\n");
      out.write("                <p id=\"mauchu1\">---Nếu đã/chưa có tài khoản---</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"dang-ky\">\n");
      out.write("                <p id=\"mauchu1\">Bạn chưa có tài khoản?</p>\n");
      out.write("                <p id=\"thongbao\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${mess}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                <form action=\"signup\" method=\"post\">\n");
      out.write("                    \n");
      out.write("                    <input class=\"oviet\" type=\"text\" name=\"taikhoan\" placeholder=\"Tên tài khoản\">\n");
      out.write("                    <input class=\"oviet\" type=\"password\" name=\"matkhau\" placeholder=\"Mật khẩu\">\n");
      out.write("                    <input class=\"oviet\" type=\"password\" name=\"nlmatkhau\" placeholder=\"Nhập lại mật khẩu\">\n");
      out.write("                    <input class=\"oviet\" type=\"text\" name=\"sdt\" placeholder=\"Số điện thoại\">\n");
      out.write("                    <input class=\"oviet\" type=\"text\" name=\"diachi\" placeholder=\"Địa chỉ\">\n");
      out.write("                    <input type=\"submit\" value=\"Đăng ký\" name =\"dangky\" class=\"nut-bam\">\n");
      out.write("\n");
      out.write("                </form>\n");
      out.write("                <p id=\"mauchu1\">---Nếu đã/chưa có tài khoản---</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <button id=\"nut-chuyen\">Đăng nhập/Đăng ký</button>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function(){\n");
      out.write("                $(\".dang-ky\").hide();\n");
      out.write("\n");
      out.write("                $(\"#nut-chuyen\").click(function(){\n");
      out.write("                    $(\".dang-nhap,.dang-ky\").toggle();\n");
      out.write("                    \n");
      out.write("                })\n");
      out.write("            })\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
