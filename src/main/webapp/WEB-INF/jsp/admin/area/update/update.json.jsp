<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
  out.clear();
  AreaService areaService = Env.getBean(AreaService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  String name = req.getString("name");
  String firstChar = req.getString("firstChar");

  long id = req.getLong("id");
  long pid = req.getLong("pid");

  if(Stringer.isAnyEmpty(name,firstChar) ){
    out.print(getJson(-1, "必填项不能为空"));
    return;
  }

  Area obj = areaService.load(Area.class, id);
  if(obj == null){
    out.print(getJson(-1, "找不到地区"));
    return;
  }
  obj.setName(name);
  obj.setFirstChar(firstChar);
  obj.setId(id);
  obj.setPid(pid);
  areaService.update(obj);
  LogService.log( "修改地区:"+name);
  out.print(getJson(1, "操作成功"));
%>