<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%
DepartmentService departmentService = Env.getBean(DepartmentService.class);
RequestWrapper req = new RequestWrapper(pageContext);

List<Department> list = departmentService.getAllDepartments();
req.attr("list", list);
out.clear();
%><!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>部门 - 后台</title>
	<link href="/res/css/login.css" rel="stylesheet" type="text/css"/>
	<script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script src="/res/js/layer/layer.js" type="text/javascript"></script>
	<script src="/res/js/func.js" type="text/javascript"></script>
	<style>
		.inputText {
			width: 100px;
		}
	</style>
</head>
<body>
<jsp:include page="/common/menu.jsp?select=1" />
<div class="dwz">您现在的位置：部门设置</div>
<div class="list">
<div class="listlo">
<input type="button" value="新建部门" class="but1" onclick="create()">
</div>
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="listtb">      	
   <tr>
    <th>ID</th>
    <th>名称</th>
    <th>排序</th>
    <th>创建时间</th>
    <th>创建者</th>
    <th>更新时间</th>
    <th>更新者</th>
    <th>操作</th>
  </tr>
  <c:forEach var="o" items="${list}" varStatus="idx"> 
  <tr class="${idx.index%2==0?"bluetr":"" }">
      <td width="5%" align="center">${o.id}</td>
      <td width="" align="left">${o.name}</td>
      <td width="7%" align="center">${o.seq}</td>
      <td width="10%" align="center"><fmt:formatDate value="${o.createTime}" pattern="yyyy-MM-dd HH:mm"/></td>
      <td width="7%" align="center">${o.createBy}</td>
      <td width="10%" align="center"><fmt:formatDate value="${o.updateTime}" pattern="yyyy-MM-dd HH:mm"/></td>
      <td width="7%" align="center">${o.updateBy}</td>
      <td width="10%" align="center">
      	<a href="javascript:modify('${o.id}')">修改</a>
      	<a href="javascript:deleteDepartment('${o.id}')">删除</a>
      </td>      
  </tr>
  </c:forEach>
</table>
<jsp:include page="/common/pager.jsp"/>
<script>
function modify(id){
	var param = {};
	param.id = id;
	doOpenForm(param);
}

function create(){
	var param = {};
	doOpenForm(param);
}

function doOpenForm(param){
	var formName;
	if(param.id != undefined){
		formName = "修改部门"
	}else{
		formName = "新建部门";
	}
	var p = Func.parseParam(param)
	layer.open({
		type: 2,
		title: formName,
		maxmin: true,
		shadeClose: true, //点击遮罩关闭层
		area : ['400px' , '250px'],
		content: '/admin/department/read/_form.jsp?'+p
	});
}

function deleteDepartment(id){
	if(!confirm('确定操作吗？')){
		return;
	}
	var data = {};
	data.id = id;
	data = Func.parseParam(data);
	$.post("/admin/department/delete/delete.json.jsp",data,function(j){
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
