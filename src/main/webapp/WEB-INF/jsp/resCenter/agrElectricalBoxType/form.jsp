<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>AgrElectricalBoxType</title>
  <link href="/res/css/login.css" rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="/ueditor/third-party/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.config.js"></script>
  <script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.all.min.js"> </script>
  <script type="text/javascript" charset="utf-8" src="/ueditor/lang/zh-cn/zh-cn.js"></script>
  <script type="text/javascript" charset="utf-8" src="/ueditor/qiniu/imageDialog.js"></script>
  <script src="/res/js/layer/layer.js" type="text/javascript"></script>
  <script src="/res/js/func.js" type="text/javascript"></script>
  <link rel="stylesheet" href="/css/tinyselect.css">
  <script src="/js/tinyselect.js"></script>
  <style>

    .dPages{padding:0px 0px 0px 10px;text-align:left;clear:both;margin:0;zoom:1;line-height:14px;}
    .dPages a{zoom:1;font-size:12px;padding:3px 5px;text-align:left; color:#000;/*链接文字默认颜色*/ border:1px solid #ccc;/*链接默认边框*/ text-decoration:none; margin:0 2px;blr:expression(this.onFocus=this.blur());outline:none;}
    .dPages a:hover{color:#f80;/*鼠标放在上面的链接文字颜色*/ border:1px solid #f80;/*鼠标放在上面的链接边框*/ text-decoration:underline}
    .dPages a:focus{-moz-outline-style: none;}
    .dPages span{zoom:1;pad1ding:4px 6px; border:none;  text-align:left; color:#fff;/*当前页文字颜色*/ background:#f80;/*当前页背景色*/ margin:1px 2px; font-size:12px; vertical-align:baseline;}
    .dPages .prev{ height:22px; border:none; padding:4px 12px 5px 18px;}
    .dPages .next{ height:22px; border:none; padding:4px 18px 5px 12px;}
    .dPages a:hover.prev {border:none; background-position:-935px -175px; text-decoration:none;}
    .dPages a:hover.next {border:none; background-position:-935px -115px;text-decoration:none;}
    .padC{ padding:15px 0 15px 0px;}
    .butpad{padding:0 5px;}

    #pageTitleSpan input{width:500px;display:none;}
    .textAreaText{width:100%;height:480px;}
    .editorClass{width:100%;height:500px;}
    .baseinfo_hide{display:none;}
    .tips{background:green;width:100px;height:20px;line-height:20px;color:white;text-align:center;display:none;}
    .dwz{float:left;}
    .dwz span{color:black;}
  </style>
</head>
<body>
<form name="articleForm" id="articleForm" action="" method="post" style="width:98%;margin: 0 auto; clear:both;">
  <div class="list2">
    <div class="padC">
      <div style="border:1px solid #C5DDF1; margin-bottom: 10px;padding:10px;">
        <input id="saveBtn" type="button" class="but1 butpad" value="保 存" />
        <input id="backBtn" type="button" class="but1 butpad" value="返 回"/>
      </div>
              <table width="100%" border="0" cellspacing="1" cellpadding="0" style="border:1px solid #C5DDF1;margin-bottom:10px">
        <tr class="baseinfo" style="margin:10px 0">
        <td align="right" width="80">电箱类型：</td>
        <td> <input type="text" id="name" name="name" value="${fn:escapeXml(agrElectricalBoxType.name) }" class="inputText" style="width:500px;height:18px;"/></td>
        </tr>
        <tr class="baseinfo" style="margin:10px 0">
        <td align="right" width="80">删除状态：</td>
        <td> <input type="text" id="deleted" name="deleted" value="${fn:escapeXml(agrElectricalBoxType.deleted) }" class="inputText" style="width:500px;height:18px;"/></td>
        </tr>
        <tr class="baseinfo" style="margin:10px 0">
        <td align="right" width="80">状态：</td>
        <td> <input type="text" id="status" name="status" value="${fn:escapeXml(agrElectricalBoxType.status) }" class="inputText" style="width:500px;height:18px;"/></td>
        </tr>
        <tr class="baseinfo" style="margin:10px 0">
        <td align="right" width="80">修改时间：</td>
        <td> <input type="text" id="updateTime" name="updateTime" value="<fmt:formatDate value="${agrElectricalBoxType.updateTime }" pattern="yyyy-MM-dd HH:mm"/>" class="inputText" style="width:500px;height:18px;"/></td>
        </tr>
        <tr class="baseinfo" style="margin:10px 0">
        <td align="right" width="80">修改人：</td>
        <td><div style='display: inline-block;margin-bottom:5px;'>
        <input type='hidden' id='userUpdateName' name='userUpdateName' value='${userUpdateName}'/>
        <select id='userIdUpdate' name='userIdUpdate' style='width: 200px;'>
        <c:if test='${not empty agrElectricalBoxType.userIdUpdate}'>
        <option value='${agrElectricalBoxType.userIdUpdate}'>${agrElectricalBoxType.userUpdate.name}</option>
        </c:if>
        <c:if test='${empty agrElectricalBoxType.userIdUpdate}'>
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
        </div></td>
        </tr>
        <tr class="baseinfo" style="margin:10px 0">
        <td align="right" width="80">创建时间：</td>
        <td> <input type="text" id="createTime" name="createTime" value="<fmt:formatDate value="${agrElectricalBoxType.createTime }" pattern="yyyy-MM-dd HH:mm"/>" class="inputText" style="width:500px;height:18px;"/></td>
        </tr>
        <tr class="baseinfo" style="margin:10px 0">
        <td align="right" width="80">创建人：</td>
        <td><div style='display: inline-block;margin-bottom:5px;'>
        <input type='hidden' id='userCreateName' name='userCreateName' value='${userCreateName}'/>
        <select id='userIdCreate' name='userIdCreate' style='width: 200px;'>
        <c:if test='${not empty agrElectricalBoxType.userIdCreate}'>
        <option value='${agrElectricalBoxType.userIdCreate}'>${agrElectricalBoxType.userCreate.name}</option>
        </c:if>
        <c:if test='${empty agrElectricalBoxType.userIdCreate}'>
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
        </div></td>
        </tr>
        </table>

      <div style="border:1px solid #C5DDF1; margin-bottom: 10px;padding:10px;">
        <input id="saveBtn2" type="button" class="but1 butpad" value="保 存" />
        <input id="backBtn2" type="button" class="but1 butpad" value="返 回"/>
      </div>
    </div>
  </div>
</form>
<div style="height:50px;"></div>


<script type="text/javascript">
          var agrElectricalBoxTypeId = "${agrElectricalBoxType.id}";
        function save(){
        var data = {};
        data.id = agrElectricalBoxTypeId;
        data.name = $("#name").val();
        data.deleted = $("#deleted").val();
        data.status = $("#status").val();
        data.updateTime = $("#updateTime").val();
        data.userIdUpdate = $("#userIdUpdate").val();
        data.createTime = $("#createTime").val();
        data.userIdCreate = $("#userIdCreate").val();
        $.post("${ROOT}/resCenter/agrElectricalBoxType/save.do",data,function(j){
        alert(j.msg);
        if(j.code == 1){
        agrElectricalBoxTypeId = j.agrElectricalBoxTypeId;
        gobackList();}},"json");}

  // 返回
  function gobackList(){
      var refer = document.referrer;
      if(refer){
          location.href = refer;
      }else{
          history.back();
      }
  }

  $(document).ready(function(){
    $("#saveBtn").click(save);
    $("#saveBtn2").click(save);
    $("#backBtn").click(gobackList);
    $("#backBtn2").click(gobackList);
  });
</script>
</body>
</html>
