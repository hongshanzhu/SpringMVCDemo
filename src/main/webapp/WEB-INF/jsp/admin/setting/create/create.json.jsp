<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
  out.clear();
  SettingService settingService = Env.getBean(SettingService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  String enKey = req.getString("enKey");
  String cnKey = req.getString("cnKey");
  String value = req.getString("value");


  if(Stringer.isAnyEmpty(enKey) ||Stringer.isAnyEmpty(cnKey)||Stringer.isAnyEmpty(value) ){
    out.print(getJson(-1, "必填项不能为空"));
    return;
  }

  Setting tmp = settingService.getSettingByEnKey(enKey);
  if(tmp != null){
    out.print(getJson(-1, "enKey 已经使用"));
    return;
  }

  Setting obj = new Setting();

  obj.setCnkey(cnKey);
  obj.setEnkey(enKey);
  obj.setValue(value);

  settingService.create(obj);
  LogService.log( "创建权限配置:"+enKey);
  out.print(getJson(1, "操作成功"));
%>