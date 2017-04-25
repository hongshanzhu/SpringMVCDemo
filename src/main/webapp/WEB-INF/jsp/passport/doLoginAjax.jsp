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
  try{
    RequestWrapper req = new RequestWrapper(pageContext);
    //尝试登录
    User user = authService.login(req);
    LogService.log(user, req.getIp(), "用户登录:"+user.getUsername());
    out.print(getJson(1,"OK"));
  }catch(Exception e){
    e.printStackTrace();
    out.print(getJson(-1,e.getMessage()));
    return;
  }
%>