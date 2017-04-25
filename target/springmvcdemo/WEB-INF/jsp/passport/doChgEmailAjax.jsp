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
    //获取登录用户，如空则禁止修改
    User user = authService.getLoginUser(req);
    if(user == null){
      throw new RuntimeException("请先登录");
    }
    //登陆成功，权限通过
    authService.verifyChgEmail(req);
    //log
    LogService.log(user, req.getIp(), "用户申请修改Email:"+req.getString("email"));
    out.print(getJson(1,"OK"));
  }catch(Exception e){
    out.print(getJson(-1,e.getMessage()));
  }
%>