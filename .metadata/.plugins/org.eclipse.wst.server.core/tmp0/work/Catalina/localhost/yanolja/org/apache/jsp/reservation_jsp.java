/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.41
 * Generated at: 2021-01-27 00:41:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class reservation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/header/header.jsp", Long.valueOf(1611708066958L));
  }

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

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>예약 하기</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/reservation/reservation_style.css\" />\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\r\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\r\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <!--캘린더-->\r\n");
      out.write("    <script defer src=\"https://use.fontawesome.com/releases/v5.0.8/js/solid.js\" integrity=\"sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script defer src=\"https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js\" integrity=\"sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js\"></script> \r\n");
      out.write("   <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css\" />\r\n");
      out.write("   <!--캘린더 끝-->\r\n");
      out.write("    \r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <header>\r\n");
      out.write("        <div class=\"between yanolja \">\r\n");
      out.write("            <div class=\"yanolja__empty  \"></div>\r\n");
      out.write("            <div class=\"yanolja__yanolja  \">\r\n");
      out.write("                <a href=\"/\" class=\"HomeTitle_logo__14aI3\">\r\n");
      out.write("                    <img src=\"//yaimg.yanolja.com/joy/sunny/static/images/logo.svg\"\r\n");
      out.write("                        alt=\"야놀자 웹사이트. 최저가 모텔, 호텔, 종합 숙박, 대한민국 대표 숙소 예약사이트, 야놀자 숙박 어플\">\r\n");
      out.write("                </a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"yanolja__user  \">\r\n");
      out.write("                <div>\r\n");
      out.write("                    <button type=\"button\" class=\"btn\"  onclick = \"location.href = 'login'\">로그인</button>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div>\r\n");
      out.write("                <button type=\"button\" class=\"btn\" onclick = \"location.href = 'join'\">회원가입</button>\r\n");
      out.write("            </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </header>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <section>\r\n");
      out.write("        <div class=\"section__main\">\r\n");
      out.write("            <div></div>\r\n");
      out.write("            <div class=\"section__center\">\r\n");
      out.write("                <div class=\"section1__main\">\r\n");
      out.write("                    <div class=\"motel__title\">모텔 이름</div>\r\n");
      out.write("                    <div class=\"motel__subtitle\">모텔 정보</div>\r\n");
      out.write("                    <div class=\"motel__datecheck\">\r\n");
      out.write("                        <div class=\"check__in\">\r\n");
      out.write("                            <div class=\"in_1\">체크인</div>\r\n");
      out.write("                            <div class=\"in_2\">2021.01.25(월) 날짜변수</div>\r\n");
      out.write("                            <!-- 타임캘린더-->\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <div class=\"row in__size\">\r\n");
      out.write("                                    <div class=\"col-sm-12\">\r\n");
      out.write("                                        <div class=\"form-group nomargin\">\r\n");
      out.write("                                            <div class=\"input-group date\" id=\"datetimepicker3\"\r\n");
      out.write("                                                data-target-input=\"nearest\">\r\n");
      out.write("                                                <input type=\"text\" class=\"form-control datetimepicker-input\"\r\n");
      out.write("                                                    data-target=\"#datetimepicker3\" placeholder=\"체크인 시간 선택\" />\r\n");
      out.write("                                                <div class=\"input-group-append\" data-target=\"#datetimepicker3\"\r\n");
      out.write("                                                    data-toggle=\"datetimepicker\">\r\n");
      out.write("                                                    <div class=\"input-group-text\"><i class=\"fa fa-clock-o\">선택</i></div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <!-- 타임캘린더 끝-->\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"date__second\">→</div>\r\n");
      out.write("                        <div class=\"check__out\">\r\n");
      out.write("                            <div class=\"out_1\">체크아웃</div>\r\n");
      out.write("                            <div class=\"out_2\">2021.01.26(화) 날짜변수1</div>\r\n");
      out.write("                            <!-- 타임캘린더-->\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <div class=\"row out__size\">\r\n");
      out.write("                                    <div class=\"col-sm-12\">\r\n");
      out.write("                                        <div class=\"form-group nomargin\">\r\n");
      out.write("                                            <div class=\"input-group date\" id=\"datetimepicker4\"\r\n");
      out.write("                                                data-target-input=\"nearest\">\r\n");
      out.write("                                                <input type=\"text\" class=\"form-control datetimepicker-input\"\r\n");
      out.write("                                                    data-target=\"#datetimepicker4\" placeholder=\"체크아웃 시간 선택\" />\r\n");
      out.write("                                                <div class=\"input-group-append\" data-target=\"#datetimepicker4\"\r\n");
      out.write("                                                    data-toggle=\"datetimepicker\">\r\n");
      out.write("                                                    <div class=\"input-group-text\"><i class=\"fa fa-clock-o\">선택</i></div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <!-- 타임캘린더 끝-->\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"reservation__info\">\r\n");
      out.write("                    <div class=\"res__title\">예약정보</div>\r\n");
      out.write("                    <div class=\"res__usernameInfo\">\r\n");
      out.write("                        <div class=\"res__usernametitle\">예약자 이름</div>\r\n");
      out.write("                        <div class=\"res__Info__input\"><input class=\"res__input\" type=\"text\" value=\"유저이름\" placeholder=\"체크인 시 필요합니다\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"res__usernameInfo\">\r\n");
      out.write("                        <div class=\"res__usernametitle\">예약자 번호</div>\r\n");
      out.write("                        <div class=\"res__Info__input\"><input class=\"res__input\" type=\"text\" value=\"유저번호\" placeholder=\"예약내용 확인 시 필요합니다\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"res__usernameInfo\">\r\n");
      out.write("                        <div class=\"res__usernametitle\">숙박 종류 선택</div>\r\n");
      out.write("                        <div class=\"res__Info__input\">\r\n");
      out.write("                              <select name=\"cars\" class=\"custom-select-sm res__Info__select\">\r\n");
      out.write("                            <option selected>숙박 종류 선택</option>\r\n");
      out.write("                            <option value=\"volvo\">대실</option>\r\n");
      out.write("                            <option value=\"fiat\">숙박</option>\r\n");
      out.write("                          </select></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"res__title mt10\">가격 정보</div>\r\n");
      out.write("                    <div class=\"res__usernameInfo\">\r\n");
      out.write("                        <div class=\"res__usernametitle\">대실 금액</div>\r\n");
      out.write("                        <div class=\"res__Info__input\"><input class=\"res__input\" type=\"text\" value=\"250,000\" readonly ></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"res__usernameInfo\">\r\n");
      out.write("                        <div class=\"res__usernametitle\">숙박 금액</div>\r\n");
      out.write("                        <div class=\"res__Info__input\"><input class=\"res__input\" type=\"text\" value=\"300,000\" readonly ></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div><button type=\"button\" class=\"res__btn btn btn-danger btn-block mt10\">예약하기</button></div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>3</div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div></div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <script src=\"javascript/reservation.js\">\r\n");
      out.write("    </script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
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