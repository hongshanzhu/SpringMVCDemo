<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
  out.clear();
  UserRoleService userRoleService = Env.getBean(UserRoleService.class);

  RequestWrapper req = new RequestWrapper(pageContext);

  long rid = req.getLong("rid");
  List<Long> uids = req.getLongList("uid");

  if(rid == 0 || Arrayer.isNullOrEmpty(uids)){
    out.print(getJson(-1, "参数不正确"));
    return;
  }

//先删除之前的权限
  userRoleService.unbindAdminUser(rid,null);
  for(long uid : uids){
    int r = req.getInt("r_"+uid);
    if(r == 1){
      userRoleService.bindAdminUserToRole(uid, rid);
    }
  }
  LogService.log("绑定角色用户:rid="+rid);
  out.print(getJson(1, "操作成功"));
%>