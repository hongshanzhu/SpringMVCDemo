<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<%@include file="/WEB-INF/jsp/common/func.jsp" %>
<%
out.clear();
ResourceService resourceService = Env.getBean(ResourceService.class);
RequestWrapper req = new RequestWrapper(pageContext);
long id = req.getLong("id");
//当前资源
Resource resource = null;
if(id > 0){//修改
	resource = resourceService.load(Resource.class, id);
	if(resource == null){
		out.println(getErrHtml("资源不存在"));
		return;
	}
}else{//新建	
	List<Resource> list = resourceService.listResources();
	int lastSeq = 0;	
	if(list != null && list.size() > 0){
		lastSeq = list.get(list.size() - 1).getSeq();
	}
	resource = new Resource();
	resource.setSeq(lastSeq + 1);
}
req.attr("resource",resource);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新建或修改资源设置- 后台</title>
<link href="/res/css/login.css" rel="stylesheet" type="text/css" />
<script src="/res/js/jquery-1.8.3.min.js"></script>
<script src="/res/js/func.js"></script>
	<style>
.padC{ padding:15px 0 15px 0px;}
.butpad{padding:0;}
.edittbl tr {height:24px; line-height:24px; padding:0px;}
.inputText{width:200px;}
</style>
</head>
<body>
<div class="bg login box" style="width:95% ;height:210px">
<div class="list">
<div class="padC">
<span style="color:red">注：*为必填项</span>
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="edittbl">
<tr><td align="right" width="20%">名称：</td><td align="left"><input type="text" id="name" name="name" value="${resource.name }" class="inputText"/><span style="color:red">*</span></td></tr>
<tr><td align="right" width="20%">匹配样式：</td><td align="left"><input type="text" id="uriPattern" name="uriPattern" value="${resource.uriPattern }" class="inputText"/><span style="color:red">*</span></td></tr>
<tr><td align="right">排序：</td><td align="left"><input type="text" id="seq" name="seq" value="${resource.seq }" class="inputText" /></td></tr>

</table>
<center style="margin-top:5px;"><input type="button" value="确 定" class="but1" onclick="saveResource()"></center>
</div>
</div>
</div>
<script type="text/javascript">
function saveResource(){
	var url = "${ROOT}/auth/resource/save.do";
	var data = {};
	data.id = "${resource.id}";
	data.name = $("#name").val();
	data.uriPattern = $("#uriPattern").val();
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
