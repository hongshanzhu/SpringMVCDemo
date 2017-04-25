<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%
  ResourceService resourceService = Env.getBean(ResourceService.class);
  RoleService roleService = Env.getBean(RoleService.class);
  RoleResourceService roleResourceService = Env.getBean(RoleResourceService.class);

  RequestWrapper req = new RequestWrapper(pageContext);
  long rid = req.getLong("rid");
  Resource resource = resourceService.getResource(rid);
  if(resource == null){
    throw new RuntimeException("资源不存在");
  }
  req.attr("resource", resource);

  List<RoleResource> roleResources = roleResourceService.listRoleResourcesByResourceId(rid);
  req.attr("roleResources", roleResources);

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
    <b>${resource.name }</b> - 受权角色列表  <input type="button" value="返 回" class="but1" onclick="history.back()" />
  </div>
  <table width="100%" border="0" cellspacing="1" cellpadding="0" class="listtb">
    <tr>
      <th>角色名称</th>
      <th>角色权限</th>
      <th>操作</th>
    </tr>
    <c:forEach var="o" items="${roleResources}" varStatus="idx">
      <tr class="${idx.index%2==0?"bluetr":"" }">
        <td width="30%" align="center">${o.role.name}</td>
        <td width="" align="center">
          <input disabled type="checkbox" value="1" ${o.canRead == 1?"checked":""} />读
          &nbsp;&nbsp;<input disabled type="checkbox" value="1" ${o.canCreate == 1?"checked":""} />增
          &nbsp;&nbsp;<input disabled type="checkbox" value="1" ${o.canDelete == 1?"checked":""} />删
          &nbsp;&nbsp;<input disabled type="checkbox" value="1" ${o.canUpdate == 1?"checked":""} />改
        </td>
        <td width="10%" align="center">
          <a href="/admin/resource/read/roleResource.jsp?rid=${o.roleId}">修改角色权限</a>
        </td>
      </tr>
    </c:forEach>
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
      data.uid = "${user.id}";
      data.rid = rids;
      data = Func.parseParam(data);
      //alert(data);
      $.post("/admin/resource/create/createUserResource.json.jsp",data,function(j){
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