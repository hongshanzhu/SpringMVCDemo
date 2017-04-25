<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
  out.clear();
  AreaService areaService = Env.getBean(AreaService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  long id = req.getLong("id");
  Area area= areaService.load(Area.class,id);
  if(area == null){
    out.print(getJson(-1, "找不到地区"));
    return;
  }
  areaService.delete(area);
  LogService.log("删除地区:"+area.getName());
  out.print(getJson(1, "操作成功"));
%>