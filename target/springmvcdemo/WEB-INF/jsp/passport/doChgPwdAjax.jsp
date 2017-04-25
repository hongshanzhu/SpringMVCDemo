<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%!
  public String getJson(int code,String msg){
    Map map = new HashMap();
    map.put("code",code);
    map.put("msg",msg);
    return new JSONObject(map).toString();
  }
%>
<%
  out.clear();
  AuthService authService = Env.getBean(AuthService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  try{
    User user = authService.checkPwdPermission(req);
    //设置用户密码
    authService.setPassword(req);
    //log
    LogService.log(user, req.getIp(), "用户设置密码:"+user.getUsername());
    out.print(getJson(1,"OK"));
  }catch(Exception e){
    out.print(getJson(-1,e.getMessage()));
  }
%>