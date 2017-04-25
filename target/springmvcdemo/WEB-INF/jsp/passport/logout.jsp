<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%
  out.clear();
  AuthService authService = Env.getBean(AuthService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
//如果带有clearCookie参数，则一并清空cookie
  authService.logout(req);
  String returl = req.getString("returl",Env.getHost());
  req.attr("returl",returl);
%>
<script>
  //alert("成功登出");
  location.href = "${ROOT}";
</script>