<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%@include file="/WEB-INF/jsp/common/func.jsp" %>
<%
  out.clear();
  ResourceService resourceService = Env.getBean(ResourceService.class);
  RoleResourceService roleResourceService = Env.getBean(RoleResourceService.class);
  RequestWrapper req = new RequestWrapper(pageContext);

  long roleId = req.getLong("roleId");
  List<Long> rids = req.getLongList("rid");

  if(roleId == 0 || Arrayer.isNullOrEmpty(rids)){
    out.print(getJson(-1, "参数不正确"));
    return;
  }

//先删除之前的权限
  roleResourceService.unbindRole(roleId, null);
  for(long rid : rids){
    int r = req.getInt("r_"+rid);
    int c = req.getInt("c_"+rid);
    int d = req.getInt("d_"+rid);
    int u = req.getInt("u_"+rid);
    if(r == 1 || c == 1 || d == 1 || u == 1){
      roleResourceService.bindRole(roleId, rid, r, c, u, d);
    }
  }
  LogService.log("创建角色资源:"+roleId);
  out.print(getJson(1, "操作成功"));
%>