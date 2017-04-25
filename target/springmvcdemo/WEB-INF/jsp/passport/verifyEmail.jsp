<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%
  out.clear();
  AuthService authService = Env.getBean(AuthService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
//确认修改Email
  try{
    authService.confirmEmailChg(req);
  }catch(Exception e){
    req.attr("msg",e.getMessage());
  }
%>
<c:if test="${empty msg}"><div style="text-align:center;margin-top:50px;">Email验证成功，并且已经更新！请关闭本窗口，然后返回原登录页面并刷新</div></c:if>
<c:if test="${not empty msg}"><div style="text-align:center;margin-top:50px;">${msg}</div></c:if>
