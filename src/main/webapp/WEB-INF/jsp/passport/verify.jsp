<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%
  out.clear();
  AuthService authService = Env.getBean(AuthService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
//确认用户环境
  authService.confirmUserEnv(req);
%>
<div style="text-align:center;margin-top:50px;">验证成功！请关闭本窗口，然后返回原登录页面并刷新</div>