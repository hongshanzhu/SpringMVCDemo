<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>AgrTerminalData</title>
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
        ID:<input name="id" value="${id}" class="inputText" style="width:50px"/>
        终端ID:<div style='display: inline-block'>
        <input type='hidden' id='agrTerminalName' name='agrTerminalName' value='${agrTerminalName}'/>
        <select id='agrTerminalId' name='agrTerminalId' style='width: 100%;'>
        <c:if test='${not empty agrTerminalId}'>
        <option value='${agrTerminalId}'>${agrTerminalName}</option>
        </c:if>
        <c:if test='${empty agrTerminalIdId}'>
        <option value='-1'>全部</option>
        </c:if>
        </select>
        <script>
        function agrTerminalIdDataParser(data, selected) {
        	retval = [ { val: '-1' , text: '全部' } ];
        	list=data.result;
        	list.forEach(function(v){retval.push({ val: v.id , text: v.name });});
        	return retval;
        }
        $('#agrTerminalId').tinyselect({ dataUrl: '/resCenter/agrTerminal/getAgrTerminalListJson.do' , dataParser: agrTerminalIdDataParser});
        $('#agrTerminalId').on('change',function() {
        	var text=$('#agrTerminalId option:selected').text();
        $('#agrTerminalName').val(text);
        });
        </script>
        </div>
        终端mac地址:<input name="mac" value="${mac}" class="inputText" style="width:50px"/>
        <%--空气温度:<input name="airTemp" value="${airTemp}" class="inputText" style="width:50px"/>--%>
        <%--土壤温度:<input name="soilTemp" value="${soilTemp}" class="inputText" style="width:50px"/>--%>
        <%--光照强度:<input name="lux" value="${lux}" class="inputText" style="width:50px"/>--%>
        <%--空气湿度:<input name="airHumidity" value="${airHumidity}" class="inputText" style="width:50px"/>--%>
        <%--土壤湿度:<input name="soilHumidity" value="${soilHumidity}" class="inputText" style="width:50px"/>--%>
        <%--CO2浓度:<input name="co2Concentration" value="${co2Concentration}" class="inputText" style="width:50px"/>--%>
        <%--删除状态:<input name="deleted" value="${deleted}" class="inputText" style="width:50px"/>--%>
        <%--状态:<input name="status" value="${status}" class="inputText" style="width:50px"/>--%>
        <%--修改时间:<input name="updateTime" value="${updateTime}" class="inputText" style="width:50px"/>--%>

        创建时间:<input name="createTime" value="${createTime}" class="inputText" style="width:50px"/>

        <input type="submit" value="查询" class="but1">
        <input type="button" value="新建" class="but1" onclick="create()">

         <input type="button" value="刷新" class="but1" onclick="reload()">

        <input type="button" value="返回" class="but1" onclick="history.back()">
        </form>
        </div>

            <table width="100%" border="0" cellspacing="1" cellpadding="0" class="listtb">
        <tr>
        <th>ID</th>
        <th>终端ID</th>
        <th>终端mac地址</th>
        <th>空气温度</th>
        <th>土壤温度</th>
        <th>光照强度</th>
        <th>空气湿度</th>
        <th>土壤湿度</th>
        <th>CO2浓度</th>
        <%--<th>删除状态</th>--%>
        <%--<th>状态</th>--%>
        <%--<th>修改时间</th>--%>
        <%--<th>修改人</th>--%>
        <th>创建时间</th>
        <%--<th>创建人</th>--%>
        <th>操作</th>
        </tr>
        <c:forEach var="o" items="${pager.resultList}" varStatus="idx">
        <tr class="${idx.index%2==0?"bluetr":"" }">
        <td width="5%" align="center">${o.id}</td>
        <td width="5%" align="center">${o.agrTerminal.name}</td>
        <td width="5%" align="center">${o.mac}</td>
        <td width="5%" align="center">${o.airTemp}</td>
        <td width="5%" align="center">${o.soilTemp}</td>
        <td width="5%" align="center">${o.lux}</td>
        <td width="5%" align="center">${o.airHumidity}</td>
        <td width="5%" align="center">${o.soilHumidity}</td>
        <td width="5%" align="center">${o.co2Concentration}</td>
        <%--<td width="5%" align="center">${o.deleted}</td>--%>
        <%--<td width="5%" align="center">${o.status}</td>--%>
        <%--<td width="5%" align="center"><fmt:formatDate value="${o.updateTime }" pattern="yyyy-MM-dd HH:mm"/>--%>
        <%--<td width="5%" align="center">${o.userUpdate.name}</td>--%>
        <td width="5%" align="center"><fmt:formatDate value="${o.createTime }" pattern="yyyy-MM-dd HH:mm"/>
        <%--<td width="5%" align="center">${o.userCreate.name}</td>--%>
        <td width="5%" align="center">
        <a href="${ROOT}/resCenter/agrTerminalData/form.do?id=${o.id}">修改</a>
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
        location.href="${ROOT}/resCenter/agrTerminalData/form.do";
      }

      function reload(){
          location.href="${ROOT}/resCenter/agrTerminalData/list.do";
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
        $.post("${ROOT}/resCenter/agrTerminalData/delete.do",data,function(j){
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
