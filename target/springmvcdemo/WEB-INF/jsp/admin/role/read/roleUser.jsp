<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%
  RoleService roleService = Env.getBean(RoleService.class);
  UserRoleService userRoleService = Env.getBean(UserRoleService.class);
  UserService adminUserService = Env.getBean(UserService.class);
  RequestWrapper req = new RequestWrapper(pageContext);
  long rid = req.getLong("rid");
  Role role = roleService.load(Role.class, rid);
  if(role == null){
    throw new RuntimeException("角色不存在");
  }
  req.attr("role", role);
  List<User> adminUsers = adminUserService.listUsers();
  req.attr("adminUsers",adminUsers);
  List<UserRole> userRoles = userRoleService.listRoleUsersByRoleId(rid);
  req.attr("userRoles", userRoles);

  Map<Long,UserRole> map = new HashMap<Long,UserRole>();
  if(userRoles != null && userRoles.size() > 0){
    for(UserRole ur : userRoles){
      map.put(ur.getUid(), ur);
    }
  }
  req.attr("map", map);


  out.clear();
%><!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>角色用户设置</title>
  <link href="/res/css/login.css" rel="stylesheet" type="text/css" />
  <script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
  <script src="/res/js/layer/layer.js" type="text/javascript"></script>
  <script src="/res/js/func.js" type="text/javascript"></script>
  <style>
    .inputText{width:100px;}
  </style>
</head>
<body>

<jsp:include page="/common/menu.jsp?select=1" />
<div class="dwz">您现在的位置：角色用户设置</div>
<div class="list">
  <div class="listlo">
    <b>${role.name }</b> - 角色用户列表  <input type="button" value="返 回" class="but1" onclick="history.back()" />
  </div>
  <table width="100%" border="0" cellspacing="1" cellpadding="0" class="listtb">
    <tr>
      <th>序号</th>
      <th>用户ID</th>
      <th>用户昵称</th>
      <th>用户名称</th>
      <th>用户权限</th>
    </tr>
    <c:forEach var="o" items="${adminUsers}" varStatus="idx">
      <tr class="${idx.index%2==0?"bluetr":"" }">
        <td width="10%" align="center">${idx.index}</td>
        <td width="10%" align="center">${o.id}</td>
        <td width="20%" align="center">${o.username}</td>
        <td width="20%" align="center">${o.truename}</td>
        <td width="" align="left">
          <input type="checkbox" name="cbx_${o.id }" id="cbx_r_${o.id }" value="1" ${map[o.id] != null?"checked":""} />
        </td>
      </tr>
    </c:forEach>
  </table>
  <table width="100%" border="0" cellspacing="1" cellpadding="0" class="listtb">
    <tr><td width="35%" align="right" style="height:40px;line-height:40px;">全选操作</td>
      <td align="left">
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" value="1" onclick="selectAll(this,'')" />全选
        &nbsp;&nbsp;<input type="button" value="提 交" class="but1" onclick="saveObj()" />
      </td></tr>
  </table>
  <jsp:include page="/common/pager.jsp"/>

  <script>
    function selectALine(cbx,cbx_name){
      $("input[name='"+cbx_name+"']").attr("checked",cbx.checked);
    }

    function selectAll(cbx,t){
      if(t != ""){
        $("input[id^='"+t+"']").attr("checked",cbx.checked);
      }else{
        $("input[name^='cbx_']").attr("checked",cbx.checked);
      }

    }

    function saveObj(){
      var data = {};
      var uids = new Array();
      <c:forEach var="o" items="${adminUsers}">
      uids[uids.length]="${o.id}";
      data.r_${o.id} = $("#cbx_r_${o.id}").attr("checked") ? 1 : 0;
      </c:forEach>
      data.rid = "${role.id}";
      data.uid = uids;
      data = Func.parseParam(data);
      $.post("/admin/role/create/createRoleUser.json.jsp",data,function(j){
        alert(j.msg);
        if(j.code == 1){
          Func.reloadPage();
        }
      },"json");
    }
  </script>
</div>
</body>
</html>
