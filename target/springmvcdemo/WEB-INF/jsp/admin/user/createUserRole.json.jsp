<%@ page import="javax.sound.midi.SysexMessage" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%@include file="/WEB-INF/jsp/common/func.jsp" %>
<%
  out.clear();
  UserRoleService userRoleService = Env.getBean(UserRoleService.class);

  RequestWrapper req = new RequestWrapper(pageContext);

  long uid = req.getLong("uid");
  List<Long> rids = req.getLongList("rid");

  if(uid == 0 || Arrayer.isNullOrEmpty(rids)){
    out.print(getJson(-1, "参数不正确"));
    return;
  }

//先删除之前的权限
  userRoleService.unbindRole(uid, null);
  for(long rid : rids){
    int r = req.getInt("r_"+rid);
    if(r == 1){
      userRoleService.bindAdminUserToRole(uid, rid);
    }
  }
  LogService.log("绑定用户角色:uid="+uid);
  System.out.println("绑定用户角色:uid="+uid);
  out.print(getJson(1, "操作成功"));
%>