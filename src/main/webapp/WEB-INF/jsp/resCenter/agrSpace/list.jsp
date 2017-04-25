<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>AgrSpace</title>
  <link href="/res/css/login.css" rel="stylesheet" type="text/css"/>
  <script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
  <script src="/res/js/layer/layer.js" type="text/javascript"></script>
  <script src="/res/js/func.js" type="text/javascript"></script>
  <link rel="stylesheet" href="/css/tinyselect.css">
  <script src="/js/tinyselect.js"></script>
  <style>
    .inputText {
      width: 100px;
    }
  </style>
</head>
<body>
<div class="content">
  <div class="list">
            <div class="listlo">
        <form id="fmSearch" name="fmSearch" method="get" action="">
        场地ID:<input name="id" value="${id}" class="inputText" style="width:50px"/>
        场地编码:<input name="no" value="${no}" class="inputText" style="width:50px"/>
        场地名称:<input name="name" value="${name}" class="inputText" style="width:50px"/>
        删除状态:<input name="deleted" value="${deleted}" class="inputText" style="width:50px"/>
        状态:<input name="status" value="${status}" class="inputText" style="width:50px"/>
        修改时间:<input name="updateTime" value="${updateTime}" class="inputText" style="width:50px"/>
        修改人:<div style='display: inline-block'>
        <input type='hidden' id='userUpdateName' name='userUpdateName' value='${userUpdateName}'/>
        <select id='userIdUpdate' name='userIdUpdate' style='width: 100%;'>
        <c:if test='${not empty userIdUpdate}'>
        <option value='${userIdUpdate}'>${userUpdateName}</option>
        </c:if>
        <c:if test='${empty userIdUpdateId}'>
        <option value='-1'>全部</option>
        </c:if>
        </select>
        <script>
        function userIdUpdateDataParser(data, selected) {
        	retval = [ { val: '-1' , text: '全部' } ];
        	list=data.result;
        	list.forEach(function(v){retval.push({ val: v.id , text: v.name });});
        	return retval;
        }
        $('#userIdUpdate').tinyselect({ dataUrl: '/auth/user/getUserListJson.do' , dataParser: userIdUpdateDataParser});
        $('#userIdUpdate').on('change',function() {
        	var text=$('#userIdUpdate option:selected').text();
        $('#userUpdateName').val(text);
        });
        </script>
        </div>
        创建时间:<input name="createTime" value="${createTime}" class="inputText" style="width:50px"/>
        创建人:<div style='display: inline-block'>
        <input type='hidden' id='userCreateName' name='userCreateName' value='${userCreateName}'/>
        <select id='userIdCreate' name='userIdCreate' style='width: 100%;'>
        <c:if test='${not empty userIdCreate}'>
        <option value='${userIdCreate}'>${userCreateName}</option>
        </c:if>
        <c:if test='${empty userIdCreateId}'>
        <option value='-1'>全部</option>
        </c:if>
        </select>
        <script>
        function userIdCreateDataParser(data, selected) {
        	retval = [ { val: '-1' , text: '全部' } ];
        	list=data.result;
        	list.forEach(function(v){retval.push({ val: v.id , text: v.name });});
        	return retval;
        }
        $('#userIdCreate').tinyselect({ dataUrl: '/auth/user/getUserListJson.do' , dataParser: userIdCreateDataParser});
        $('#userIdCreate').on('change',function() {
        	var text=$('#userIdCreate option:selected').text();
        $('#userCreateName').val(text);
        });
        </script>
        </div>
        <input type="submit" value="查询" class="but1">
        <input type="button" value="新建" class="but1" onclick="create()">
        <input type="button" value="返回" class="but1" onclick="history.back()">
        </form>
        </div>

            <table width="100%" border="0" cellspacing="1" cellpadding="0" class="listtb">
        <tr>
        <th>场地ID</th>
        <th>场地编码</th>
        <th>场地名称</th>
        <th>删除状态</th>
        <th>状态</th>
        <th>修改时间</th>
        <th>修改人</th>
        <th>创建时间</th>
        <th>创建人</th>
        <th>操作</th>
        </tr>
        <c:forEach var="o" items="${pager.resultList}" varStatus="idx">
        <tr class="${idx.index%2==0?"bluetr":"" }">
        <td width="9%" align="center">${o.id}</td>
        <td width="9%" align="center">${o.no}</td>
        <td width="9%" align="center">${o.name}</td>
        <td width="9%" align="center">${o.deleted}</td>
        <td width="9%" align="center">${o.status}</td>
        <td width="9%" align="center"><fmt:formatDate value="${o.updateTime }" pattern="yyyy-MM-dd HH:mm"/>
        <td width="9%" align="center">${o.userUpdate.name}</td>
        <td width="9%" align="center"><fmt:formatDate value="${o.createTime }" pattern="yyyy-MM-dd HH:mm"/>
        <td width="9%" align="center">${o.userCreate.name}</td>
        <td width="9%" align="center">
        <a href="${ROOT}/resCenter/agrSpace/form.do?id=${o.id}">修改</a>
        <a href="javascript:remove('${o.id}')">删除</a><br>
        </td>
        </tr>
        </c:forEach>
        </table>

    <jsp:include page="/WEB-INF/jsp/common/pager.jsp"/>
    <script>
      function checkAllId(cb){
        Func.batchCheck("idCbx",!cb.checked);
      }
      function modify(id){
        location.href=""+id;
      }

      function create(){
        location.href="${ROOT}/resCenter/agrSpace/form.do";
      }

      function remove(id){
        var ids = new Array();
        ids[0] = id;
        doRemove(ids);
      }

      function doRemove(ids){
        if(ids.length == 0){
          ids = Func.getCheckedValues("idCbx");
        }
        if(ids.length == 0){
          alert("请选择记录");
          return;
        }
        if(!confirm('确定删除吗？')){
          return;
        }
        var data = {};
        data.id = ids;
        data = Func.parseParam(data);
        $.post("${ROOT}/resCenter/agrSpace/delete.do",data,function(j){
          alert(j.msg);
          if(j.code == 1){
            Func.reloadPage();
          }
        },"json");
      }
    </script>
  </div>

</div>

</body>
</html>
