<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%
  ResourceService resourceService = Env.getBean(ResourceService.class);
  RoleResourceService roleResourceService = Env.getBean(RoleResourceService.class);
  RoleService roleService = Env.getBean(RoleService.class);
  RequestWrapper req = new RequestWrapper(pageContext);

  long rid = req.getLong("rid");
  Role role = roleService.load(Role.class, rid);

  if(role == null){
    throw new RuntimeException("角色不存在");
  }
  req.attr("role", role);

  List<Resource> resources = resourceService.listResources();
  req.attr("resources", resources);

  List<RoleResource> roleResources = roleResourceService.listRoleResourcesByRoleId(rid);
  req.attr("roleResources", roleResources);

  Map<Long,RoleResource> map = new HashMap<Long,RoleResource>();
  if(roleResources != null && roleResources.size() > 0){
    for(RoleResource rr : roleResources){
      map.put(rr.getResId(), rr);
    }
  }
  req.attr("map", map);
  out.clear();
%><!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>角色资源设置</title>
  <link href="/res/css/login.css" rel="stylesheet" type="text/css" />
  <script src="/res/js/jquery-1.8.3.min.js"></script>
  <script src="/res/js/func.js"></script>
  <style>
    .inputText{width:100px;}
  </style>
</head>
<body>

<%--<jsp:include page="/WEB-INF/jsp/common/menu.jsp?select=1" />--%>
<div class="dwz">您现在的位置：角色资源设置</div>
<div class="list">
  <div class="listlo">
    <b>${role.name}</b> - 资源权限  <input type="button" value="返 回" class="but1" onclick="history.back()" />
  </div>
  <table width="100%" border="0" cellspacing="1" cellpadding="0" class="listtb">
    <tr>
      <th>资源名称</th>
      <th>用户权限</th>
    </tr>
    <c:forEach var="o" items="${resources}" varStatus="idx">
      <tr class="${idx.index%2==0?"bluetr":"" }">
        <td width="35%" align="center">${o.name}</td>
        <td width="" align="left">
          <input type="checkbox" name="cbx_${o.id }" id="cbx_r_${o.id }" value="1" ${map[o.id].canRead == 1?"checked":""} />读
          &nbsp;&nbsp;<input name="cbx_${o.id }" id="cbx_c_${o.id }" type="checkbox" value="1" ${map[o.id].canCreate == 1?"checked":""} />增
          &nbsp;&nbsp;<input name="cbx_${o.id }" id="cbx_d_${o.id }" type="checkbox" value="1" ${map[o.id].canDelete == 1?"checked":""} />删
          &nbsp;&nbsp;<input name="cbx_${o.id }" id="cbx_u_${o.id }" type="checkbox" value="1" ${map[o.id].canUpdate == 1?"checked":""} />改
          &nbsp;&nbsp;&nbsp;&nbsp;<input name="cbx_" type="checkbox" value="1" onclick="selectALine(this,'cbx_${o.id}')" />全选
        </td>
      </tr>
    </c:forEach>
  </table>
  <table width="100%" border="0" cellspacing="1" cellpadding="0" class="listtb">
    <tr><td width="35%" align="right" style="height:40px;line-height:40px;">全选操作</td>
      <td align="left"><input name="cbx_" type="checkbox" value="1" onclick="selectAll(this,'cbx_r_')" />读
        &nbsp;&nbsp;<input name="cbx_" type="checkbox" value="1" onclick="selectAll(this,'cbx_c_')" />增
        &nbsp;&nbsp;<input name="cbx_" type="checkbox" value="1" onclick="selectAll(this,'cbx_d_')" />删
        &nbsp;&nbsp;<input name="cbx_" type="checkbox" value="1" onclick="selectAll(this,'cbx_u_')" />改
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" value="1" onclick="selectAll(this,'')" />全选
        &nbsp;&nbsp;<input type="button" value="提 交" class="but1" onclick="saveUserResouce()" />
      </td></tr>
  </table>
  <jsp:include page="/WEB-INF/jsp/common/pager.jsp"/>
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

    function saveUserResouce(){
      var data = {};
      var rids = new Array();
      <c:forEach var="o" items="${resources}">rids[rids.length]="${o.id}";
      data.r_${o.id} = $("#cbx_r_${o.id}").attr("checked") ? 1 : 0;
      data.c_${o.id} = $("#cbx_c_${o.id}").attr("checked") ? 1 : 0;
      data.d_${o.id} = $("#cbx_d_${o.id}").attr("checked") ? 1 : 0;
      data.u_${o.id} = $("#cbx_u_${o.id}").attr("checked") ? 1 : 0;
      </c:forEach>
      data.roleId = "${role.id}";
      data.rid = rids;
      data = Func.parseParam(data);
      //alert(data);
      $.post("/admin/resource/create/createRoleResource.json.jsp",data,function(j){
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