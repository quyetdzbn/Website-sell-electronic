/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.78
 * Generated at: 2022-05-26 14:03:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dal.NguoiDungDAO;
import model.User;
import model.BaiViet;
import java.util.List;

public final class blogs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/jstl-impl.jar", Long.valueOf(1653573505911L));
    _jspx_dependants.put("jar:file:/C:/xampp/htdocs/demoWEB/build/web/WEB-INF/lib/jstl-impl.jar!/META-INF/c.tld", Long.valueOf(1343794618000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("model.BaiViet");
    _jspx_imports_classes.add("dal.NguoiDungDAO");
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("model.User");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

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
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!DOCTYPE html>\r\n");
      out.write("    <html lang=\"en\">\r\n");
      out.write("        <head>\r\n");
      out.write("            <meta charset=\"UTF-8\" />\r\n");
      out.write("            <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\r\n");
      out.write("            <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("\r\n");
      out.write("            <link\r\n");
      out.write("                rel=\"stylesheet\"\r\n");
      out.write("                href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\"\r\n");
      out.write("                integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\"\r\n");
      out.write("                crossorigin=\"anonymous\"\r\n");
      out.write("                />\r\n");
      out.write("            <link\r\n");
      out.write("                rel=\"stylesheet\"\r\n");
      out.write("                href=\"https://pro.fontawesome.com/releases/v5.10.0/css/all.css\"\r\n");
      out.write("                integrity=\"sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p\"\r\n");
      out.write("                crossorigin=\"anonymous\"\r\n");
      out.write("                />\r\n");
      out.write("            <title>Bài viết</title>\r\n");
      out.write("            <link rel=\"stylesheet\" href=\"/style/style.css\" />\r\n");
      out.write("            <link rel=\"stylesheet\" href=\"/style/queries.css\" />\r\n");
      out.write("        </head>\r\n");
      out.write("        <body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            ");

                List<BaiViet> blogList = dal.BaiVietDAO.layTatCaBaiViet();
                Cookie[] cookies = request.getCookies();
                String cookieName = "user_cookie";
                String cookieValue = null;
                for (Cookie cookie : cookies) {
                    if (cookieName.equals(cookie.getName())) {
                        cookieValue = cookie.getValue();
                    }
                }
                User nguoiDung = NguoiDungDAO.getUserByCookie(cookieValue);
            
      out.write(" \r\n");
      out.write("\r\n");
      out.write("            <div class=\"container-fluid\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-sm-12\">\r\n");
      out.write("                        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n");
      out.write("                            <a class=\"navbar-brand\" href=\"/index.jsp\"\r\n");
      out.write("                               ><img src=\"assets/img/logo.png\" alt=\"\"\r\n");
      out.write("                                  /></a>\r\n");
      out.write("                            <button\r\n");
      out.write("                                class=\"navbar-toggler\"\r\n");
      out.write("                                type=\"button\"\r\n");
      out.write("                                data-toggle=\"collapse\"\r\n");
      out.write("                                data-target=\"#navbarSupportedContent\"\r\n");
      out.write("                                aria-controls=\"navbarSupportedContent\"\r\n");
      out.write("                                aria-expanded=\"false\"\r\n");
      out.write("                                aria-label=\"Toggle navigation\"\r\n");
      out.write("                                >\r\n");
      out.write("                                <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("                            </button>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("                                <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("                                    <li class=\"nav-item active\">\r\n");
      out.write("                                        <a class=\"nav-link\" href=\"#\"\r\n");
      out.write("                                           >Trang chủ <span class=\"sr-only\">(current)</span></a\r\n");
      out.write("                                        >\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"nav-item\">\r\n");
      out.write("                                        <a class=\"nav-link\" href=\"/blogs.jsp\">Bài viết </a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </ul><form action=\"/Blogs\" accept-charset=\"\" class=\"form-inline my-2 my-lg-0\">\r\n");
      out.write("                                    <input class=\"form-control mr-sm-2\" type=\"search\" name=\"q\" placeholder=\"Search\" aria-label=\"Search\">\r\n");
      out.write("                                    <button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\">Search</button>\r\n");
      out.write("                                </form>\r\n");
      out.write("                                <div  class=\"my-2 my-lg-0 d-flex align-items-center\">\r\n");
      out.write("                                    ");
 if (nguoiDung != null) {
                                            out.print(nguoiDung.getUsername()
                                                    + "<a  href='/account.jsp' ><i class='navbar__account fas fa-user-circle mr-2'></i  ></a> " + "  <form action='/Logout'>"
                                                    + "    <button"
                                                    + "       class='btn btn-outline-warning my-2 my-sm-0 mr-2'"
                                                    + "      type='submit'"
                                                    + "    >"
                                                    + "    Đăng xuất"
                                                   + "   </button>"
                                                   + "     </form> ");
                                       }
      out.write("\r\n");
      out.write("                                    ");
 if (nguoiDung == null) {

                                            out.print(" <a href='/login.jsp'> <button   class='btn btn-outline-success my-2 my-sm-0 mr-2'    type='button'    >           Đăng nhập     </button></a>   <a href='register.jsp'> <button class='btn my-2 my-sm-0' type='button'>Đăng ký</button></a>");
                                   }
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </nav>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"row pt-5\">\r\n");
      out.write("                    <div class=\"col-sm-12\">\r\n");
      out.write("                        <div class=\"container\">\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                ");
      //  c:forEach
      org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
      boolean _jspx_th_c_005fforEach_005f0_reused = false;
      try {
        _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
        _jspx_th_c_005fforEach_005f0.setParent(null);
        // /blogs.jsp(110,32) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
        _jspx_th_c_005fforEach_005f0.setItems(blogList);
        // /blogs.jsp(110,32) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fforEach_005f0.setVar("o");
        int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
        try {
          int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
          if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
            do {
              out.write("\r\n");
              out.write("                                    <div class=\"col-sm-4\">\r\n");
              out.write("                                        <div class=\"blog\">\r\n");
              out.write("                                            <a href=\"/BlogDetail?id=");
              out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${o.maBaiViet}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
              out.write("\">\r\n");
              out.write("                                                <img src=\"assets/img/");
              out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${o.anh}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
              out.write("\" alt=\"\" />\r\n");
              out.write("                                                <p class=\"title\">");
              out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${o.tieuDe}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
              out.write("</p>\r\n");
              out.write("                                            </a\r\n");
              out.write("                                            >\r\n");
              out.write("                                            <p class=\"summary\">\r\n");
              out.write("                                                ");
              out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${o.moTa}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
              out.write("\r\n");
              out.write("                                            </p>\r\n");
              out.write("                                            <div class=\"d-flex\">\r\n");
              out.write("                                                <div class=\"d-flex align-items-center mr-5\">\r\n");
              out.write("                                                    <i class=\"fas fa-user-circle\"></i>\r\n");
              out.write("                                                    <p class=\"author\">");
              out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${o.tacGia}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
              out.write("</p>\r\n");
              out.write("                                                </div>\r\n");
              out.write("                                                <div class=\"d-flex align-items-center\">\r\n");
              out.write("                                                    <i class=\"far fa-calendar-alt\"></i>\r\n");
              out.write("                                                    <p class=\"date\">");
              out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${o.ngayDang}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
              out.write("</p>\r\n");
              out.write("                                                </div>\r\n");
              out.write("                                            </div>\r\n");
              out.write("                                        </div>  \r\n");
              out.write("                                    </div>\r\n");
              out.write("                                ");
              int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
              if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                break;
            } while (true);
          }
          if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
            return;
          }
        } catch (java.lang.Throwable _jspx_exception) {
          while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
            out = _jspx_page_context.popBody();
          _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
        } finally {
          _jspx_th_c_005fforEach_005f0.doFinally();
        }
        _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
        _jspx_th_c_005fforEach_005f0_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
      }
      out.write("\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <script\r\n");
      out.write("                src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\"\r\n");
      out.write("                integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\"\r\n");
      out.write("                crossorigin=\"anonymous\"\r\n");
      out.write("            ></script>\r\n");
      out.write("            <script\r\n");
      out.write("                src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\"\r\n");
      out.write("                integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\"\r\n");
      out.write("                crossorigin=\"anonymous\"\r\n");
      out.write("            ></script>\r\n");
      out.write("            <script\r\n");
      out.write("                src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"\r\n");
      out.write("                integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\"\r\n");
      out.write("                crossorigin=\"anonymous\"\r\n");
      out.write("            ></script>\r\n");
      out.write("\r\n");
      out.write("        </body>\r\n");
      out.write("    </html>\r\n");
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