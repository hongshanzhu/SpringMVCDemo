<%@page session="false" isErrorPage="true" contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%@page import="java.io.*" %>
<%
  AuthService authService = Env.getBean(AuthService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  User user = authService.getLoginUser(req);
  if(user != null){
    req.attr("ADMIN_NAME",user.getTruename());
  }
%>
<%
  //System.out.println("exception:"+exception);
  if(exception == null) exception = (Throwable) request.getAttribute("exception");

  if(exception == null) {
    exception = new Throwable("未发生任何异常。（请勿直接访问本页面！）");
    request.setAttribute("_SOURCE_PAGE_",this);
  }

//生成stackTrace(字符串)，并尝试让resin自动转换JSP行号
  StringWriter sw = new StringWriter();
  PrintWriter pw = new PrintWriter(sw,true);
  try {
    Object srcPage = request.getAttribute("_SOURCE_PAGE_");
    java.lang.reflect.Method method = srcPage.getClass().getMethod("_caucho_getLineMap",new Class[]{});
    Object lineMap = method.invoke(srcPage,new Object[]{});
    method = lineMap.getClass().getMethod("printStackTrace",new Class[] { Throwable.class, PrintWriter.class });
    method.invoke(lineMap, new Object[]{ exception,pw });

  } catch(Exception exx) { //Resin行号转换不成功，直接打stackTrace:
    exception.printStackTrace(pw);
  }

  String stackTrace = sw.toString();
  request.setAttribute("stackTrace",stackTrace);
  request.setAttribute("exception",exception);

  Class cls = exception.getClass();
  Throwable originalException = exception;

  while(cls != null && cls != Throwable.class) { //递归检测是否有合适的异常处理页面
    String s = cls.getName();
    //System.out.println("errorPage: checking "+s);
    s = s.replace('$','.'); //避免Linux下不能读取带'$'符号的文件名
    s = "/exception/"+s+".jsp";
    if(application.getResource(s) != null) try { //该页面存在
      pageContext.include(s);
      return;

    } catch(IOException ex) {
    } catch(Throwable ex) {
      Throwable cause = ex;
      if(ex instanceof ServletException) cause = (Exception) ((ServletException) ex).getRootCause();

      if(ex != exception && cause != exception) {
        try { out.clearBuffer(); } catch(IOException ex2) { ex2.printStackTrace(); }
        System.err.println("处理异常的页面["+s+"]本身发生异常！"+cause);
        cause.printStackTrace();

      } else { //检查是否有异常重定向
        Exception redirectEx = (Exception) request.getAttribute("exception");
        if(redirectEx != null && redirectEx != exception) { //该异常页面进行了异常转换处理
          exception = redirectEx;
          cls = redirectEx.getClass();
          continue;
        }
      }
    }

    cls = cls.getSuperclass();
  }

//找不到合适的处理页面，采用下面的标准处理：

//如果是用户在未显示完页面时跳转产生的异常，则忽略：
  if((exception instanceof java.io.IOException) && (0 <= stackTrace.indexOf("java.net.SocketOutputStream.socketWrtite("))) return;

//如果不是RuntimeException或直接扔出的Exception提示信息，在后台打印日志，以便跟踪
  cls = exception.getClass();
  if(cls != Exception.class && cls != Throwable.class && !(exception instanceof RuntimeException)) {
    response.setStatus(500);
    System.out.println("EXCEPTION! "+new java.sql.Timestamp(System.currentTimeMillis())+" "
                    +request.getAttribute("javax.servlet.forward.request_uri")+"?"+request.getAttribute("javax.servlet.forward.query_string")
                    +": "+exception
                    +"\nReferer="+request.getHeader("Referer")
                    +"\nIP="+request.getHeader("X-Forward-For")+"/"+request.getRemoteAddr()
    );
    System.err.println(stackTrace);
  }
  System.out.println("originalException:"+originalException);
  originalException.printStackTrace(System.err);
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title></title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <link rel="stylesheet" href="/res/css/global-utf8.css">
  <link rel="stylesheet" href="/res/css/idangerous.swiper.css">
  <link rel="stylesheet" href="/res/css/index-utf8.css">
  <!--[if IE]><script src="/res/js/h5.js"></script><![endif]-->
</head>
<body class="indexPage">
<%--<jsp:include page="/inc/header.jsp" ></jsp:include>--%>

<div class="container">
  <div class="bg" style="text-align: center;">
    <div style="font-size: 30px">出错啦!</div>
    <div class="null"><%=originalException.getMessage()!=null?originalException.getMessage().substring(originalException.getMessage().indexOf(":")+1):originalException.toString()%></div>
    <div class="algin dtext padB"><input name="" type="button" class="but1" value="重试" onclick="location.reload()"/> &nbsp; <input name="" type="button" class="but2" value="返回" onclick="history.back()"/></div>
  </div>
</div>
<%--<jsp:include page="/inc/footer.jsp" ></jsp:include>--%>
<!--[if IE 6]><script>document.execCommand("BackgroundImageCache", false, true)</script><![endif]-->
</body>
</html>
