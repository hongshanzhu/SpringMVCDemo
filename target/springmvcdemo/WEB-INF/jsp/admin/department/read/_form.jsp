<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%@include file="/common/func.jsp" %>
<%
out.clear();
DepartmentService departmentService = Env.getBean(DepartmentService.class);
RequestWrapper req = new RequestWrapper(pageContext);
long id = req.getLong("id");
//当前用户
Department department = null;
if(id > 0){//修改
	department = departmentService.getDepartment(id);
	if(department == null){
		out.println(getErrHtml("部门不存在"));
		return;
	}
}else{//新建	
	List<Department> list = departmentService.getAllDepartments();
	int lastSeq = 0;	
	if(list != null && list.size() > 0){
		lastSeq = list.get(list.size() - 1).getSeq();
	}
	department = new Department();
	department.setSeq(lastSeq + 1);
}
req.attr("department",department);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新建或修改部门设置- 后台</title>
<link href="/res/css/login.css" rel="stylesheet" type="text/css" />
<script src="/res/js/jquery-1.8.3.min.js"></script>
<script src="/res/js/func.js"></script>
<style>
.padC{ padding:15px 0 15px 0px;}
.butpad{padding:0;}
.edittbl tr {height:24px; line-height:24px; padding 0px;}
.inputText{width:200px;}
</style>
</head>
<body>
<div class="bg login box" style="width:95% ;height:210px">
<div class="list">
<div class="padC">
<span style="color:red">注：*为必填项</span>
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="edittbl">
<tr><td align="right" width="20%">名称：</td><td align="left"><input type="text" id="name" name="name" value="${department.name }" class="inputText"/><span style="color:red">*</span></td></tr>
<tr><td align="right">排序：</td><td align="left"><input type="text" id="seq" name="seq" value="${department.seq }" class="inputText" /></td></tr>

</table>
<center style="margin-top:5px;"><input type="button" value="确 定" class="but1" onclick="saveDepartment()"></center>
</div>
</div>
</div>
<script type="text/javascript">
function saveDepartment(){
	var url = ("${department.id}" != "0"?"/admin/department/update/update.json.jsp":"/admin/department/create/create.json.jsp");
	var data = {};
	data.id = "${department.id}";
	data.name = $("#name").val();
	data.seq = $("#seq").val();
	//转换为字符串
	data = Func.parseParam(data);
	$.post(url,data,function(j){
		alert(j.msg);
		if(j.code == 1){
			parent.Func.reloadPage();
		}
	},"json");
}
</script>
</body>
</html>
