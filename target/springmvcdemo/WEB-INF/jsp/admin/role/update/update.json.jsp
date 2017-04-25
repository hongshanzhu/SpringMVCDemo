<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
  out.clear();
  RoleService roleService = Env.getBean(RoleService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  long id = req.getLong("id");
  String name = req.getString("name");
  int seq = req.getInt("seq");

  if(Stringer.isAnyEmpty(name)){
    out.print(getJson(-1, "必填项不能为空"));
    return;
  }

  Role obj = roleService.load(Role.class, id);
  if(obj == null){
    out.print(getJson(-1, "找不到角色"));
    return;
  }
  obj.setName(name);
  obj.setSeq(seq);
  roleService.update(obj);
  LogService.log( "修改角色:"+name);
  out.print(getJson(1, "操作成功"));
%>