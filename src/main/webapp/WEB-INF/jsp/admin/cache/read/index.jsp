<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%
RequestWrapper req = new RequestWrapper(pageContext);
String key = req.getString("key");

CacheService cacheService = Env.getBean(CacheService.class);
if(key != null){
	String value = cacheService.get(key);
	//System.out.println("----------------------value:"+value);
	req.attr("value", value);
}
req.attr("key",key);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统缓存 - 后台</title>
<link href="/res/css/login.css" rel="stylesheet" type="text/css" />
	<script src="/res/js/jquery-1.8.3.min.js"></script>
<style>
.inputText{width:400px;}
.txtarea{width:100%;height:250px;}
</style>
</head>
<body>
<jsp:include page="/common/menu.jsp?select=1" />
<div class="dwz">您现在的位置：系统缓存</div>
<div class="list">
<div class="listlo">
<form>
key：<input name="key" value="${key }" class="inputText">
<input type="submit" value="查询" class="but1">
</form>
</div>
<div>
<textarea class="txtarea">${value}</textarea>
</div>
</div>
</body>
</html>
