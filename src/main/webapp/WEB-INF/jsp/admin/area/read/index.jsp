<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/common.jsp" %>
<%
  AreaService areaService = Env.getBean(AreaService.class);
  RequestWrapper req = new RequestWrapper(pageContext);

  long pid = req.getLong("pid",0);
  long id = req.getLong("id",0);
  int pageNo = req.getInt("pageNo",1);
  int pageSize = req.getInt("pageSize",50);

  Pager<Area> pager = areaService.listArea(id,pid,pageNo,pageSize);
  req.attr("pager", pager);

  if(pid > 0){
    req.attr("pArea", areaService.load(Area.class, pid));
  }

  out.clear();
%><!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>地区设置</title>
  <link href="/res/css/login.css" rel="stylesheet" type="text/css"/>
  <script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
  <script src="/res/js/layer/layer.js" type="text/javascript"></script>
  <script src="/res/js/func.js" type="text/javascript"></script>
  <style>
    .inputText{width:100px;}
  </style>
</head>
<body>
<jsp:include page="/common/menu.jsp?select=1" />
<div class="dwz">您现在的位置：地区设置
  <c:if test="${not empty pArea}">
    <c:if test="${not empty pArea.getPArea()}">
      > <a href="/admin/area/read/index.jsp?pid=${pArea.getPArea().pid}&pageNo=1">${pArea.getPArea().name} </a>
    </c:if>

    > <a href="/admin/area/read/index.jsp?pid=${pArea.pid}&pageNo=1">${pArea.name} </a>：
  </c:if>
</div>
<div class="list">
  <div class="listlo">
    <input type="button" value="新建地区" class="but1" onclick="create(0)" />
  </div>
  <table width="100%" border="0" cellspacing="1" cellpadding="0" class="listtb">
    <tr>
      <th>ID</th>
      <th>PID</th>
      <th>名称</th>
      <th>首字母</th>
      <th>操作</th>
    </tr>
    <c:forEach var="o" items="${pager.resultList}" varStatus="idx">
      <tr class="${idx.index%2==0?"bluetr":"" }">
        <td width="5%" align="center">${o.id}</td>
        <td width="10%" align="center">${o.pid}</td>
        <td width="7%" align="center"><a href="/admin/area/read/index.jsp?pid=${o.id}&pageNo=1">${o.name}</a></td>
        <td width="7%" align="center">${o.firstChar}</td>
        <td width="12%" align="center">
          <a href="javascript:modify('${o.id}')">修改</a>
          <a href="javascript:deleteObj('${o.id}')">删除</a>

          <a href="/admin/area/read/index.jsp?pid=${o.id}&pageNo=1">查看子地区</a>
          <a href="javascript:create('${o.id}')">新建子地区</a>
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

    function create(pid){
      var param = {};
      param.pid = pid;
      doOpenForm(param);
    }

    function doOpenForm(param){
      var formName;
      if(param.id != undefined){
        formName = "修改地区"
      }else{
        formName = "新建地区";
      }
      var p = Func.parseParam(param);
      layer.open({
        type: 2,
        title: formName,
        maxmin: true,
        shadeClose: true, //点击遮罩关闭层
        area : ['400px' , '250px'],
        content: '/admin/area/read/_form.jsp?'+p
      });
    }

    function deleteObj(id){
      if(!confirm('确定操作吗？')){
        return;
      }
      var data = {};
      data.id = id;
      data = Func.parseParam(data);
      $.post("/admin/area/delete/delete.json.jsp",data,function(j){
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