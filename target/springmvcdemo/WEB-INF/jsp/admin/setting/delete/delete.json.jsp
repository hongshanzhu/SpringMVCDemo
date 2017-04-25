<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
  out.clear();
  SettingService settingService = Env.getBean(SettingService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  long id = req.getLong("id");
  Setting setting= settingService.load(Setting.class,id);
  if(setting == null){
    out.print(getJson(-1, "找不到权限配置"));
    return;
  }
  settingService.delete(setting);
  LogService.log("删除权限配置:"+setting.getEnkey());
  out.print(getJson(1, "操作成功"));
%>