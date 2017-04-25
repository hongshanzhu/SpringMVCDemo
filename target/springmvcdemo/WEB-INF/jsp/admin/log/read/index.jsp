<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%
LogService logService = Env.getBean(LogService.class);


RequestWrapper req = new RequestWrapper(pageContext);
String createBy = req.getString("createBy");
Date startTime = req.getDate("startTime");
Date endTime = req.getDate("endTime");

int pageNo = req.getInt("pageNo",1);
int pageSize = req.getInt("pageSize",50);
Pager<Log> pager = logService.query(createBy, startTime, endTime, pageNo, pageSize);
req.attr("pager", pager);

req.attr("createBy",createBy);
req.attr("startTime",startTime);
req.attr("endTime",endTime);
out.clear();
%><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统日志 - 后台</title>
<link href="/res/css/login.css" rel="stylesheet" type="text/css" />
<link href="/res/css/jquery.datetimepicker.css" rel="stylesheet"/>
	<script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/res/js/jquery.datetimepicker.js"></script>
    <script type="text/javascript">
        $(function(){
            $("#day1").datetimepicker({format:"Y-m-d",timepicker:false});
            $("#day2").datetimepicker({format:"Y-m-d",timepicker:false});
        });
    </script>
<style>
.inputText{width:100px;}
</style>
</head>
<body>
<jsp:include page="/common/menu.jsp?select=1" />
<div class="dwz">您现在的位置：系统日志</div>
<div class="list">
<div class="listlo">
<form>
创建人：<input name="createBy" value="${createBy }" class="inputText">
开始时间：<input name="startTime" value="<fmt:formatDate value="${startTime }" pattern="yyyy-MM-dd HH:mm"/>" class="inputText" id="day1" type="text">
结束时间：<input name="endTime" value="<fmt:formatDate value="${endTime }" pattern="yyyy-MM-dd HH:mm"/>" class="inputText" id="day2" type="text">
<input type="submit" value="查询" class="but1">
</form>
</div>
<table width="100%" border="0" cellspacing="1" cellpadding="0" class="listtb">      	
   <tr>
    <th>ID</th>
    <th>创建人</th>
    <th>创建时间</th>
    <th>IP</th>
    <th>详情</th>   
  </tr>
  <c:forEach var="o" items="${pager.resultList}" varStatus="idx"> 
  <tr class="${idx.index%2==0?"bluetr":"" }">
      <td width="6%" align="center">${o.id}</td>
      <td width="8%" align="center">${o.createBy}</td>
      <td width="10%" align="center"><fmt:formatDate value="${o.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
      <td width="10%" align="center">${o.ip }</td>
      <td width="" align="left">${o.detail}</td>
  </tr>
  </c:forEach>
</table>
<jsp:include page="/common/pager.jsp"/>
</div>

</body>
</html>
