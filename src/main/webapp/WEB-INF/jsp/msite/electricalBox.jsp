<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE html>
<!-- saved from url=(0059)http://mqtt.gdyftech.cn/wechat/index.html#DeviceManage/list -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>农业4.0管理平台</title>
    <script id="load-script" module="Home" method="index" src="/js/msite/require.js" data-main="js/app"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="app" src="/js/msite/app.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="config" src="/js/msite/config.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="ctrl-loader" src="/js/msite/ctrl-loader.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="lib/requirejs/css" src="/js/msite/css.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="qweb/main" src="/js/msite/main.js"></script>
    <link type="text/css" rel="stylesheet" href="/js/msite/style.css">
    <link type="text/css" rel="stylesheet" href="/js/msite/font-awesome.min.css">
    <script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="jquery-slim-scroll" src="/js/msite/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="init" src="/js/msite/init.js">
    </script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="base-ctrl" src="/js/msite/base-ctrl.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="handlebars" src="/js/msite/handlebars.js"></script>
    <link type="text/css" rel="stylesheet" href="/js/msite/layer.css">
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="hbs-helper" src="/js/msite/handlebars-helper.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="md5" src="/js/msite/md5.min.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="layer" src="/js/msite/layer.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="ctrl/home" src="/js/msite/home.js"></script>
    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="ctrl/device-manage" src="/js/msite/device-manage.js"></script>--%>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="mqtt" src="/js/msite/mqttws31.js"></script>
    <link rel="stylesheet" href="/css/tinyselect-m.css">
    <script src="/js/tinyselect.js"></script>
    <script src="/res/js/func.js"></script>
    <script>
        $(document).ready(function(){
            //alert("All ready");
//            $.get("/resCenter/agrElectricalBox/getElectricalBoxState.do",function(data,status){
//                //alert("Data: " + data + "\nStatus: " + status);
//                //$("#100001btn").className="open";
//                $('#100001span').attr("class", "open");
//            });
            //

            $("#elecBox").hide();
        });

        function setvalue(ids){
            var values=$("#evalue"+ids).val();
            values=(values==1)?2:1;
            $.post("${ROOT}/resCenter/agrElectricalBox/setElectricalBoxState.do",
                    {
                        id:ids,
                        value:values
                    },
                    function(data,status){
                        if(status=="success"){
                            //alert("ok");
                            if(values==1){
                                $('#spanclass'+ids).attr("class", "open");
                                $('#span'+ids).html("开");
                            }else{
                                $('#spanclass'+ids).attr("class", "close");
                                $('#span'+ids).html("关");
                            }
                            $('#evalue'+ids).val(values);
                        }
                        //alert("Data: " + data + "\nStatus: " + status);
                    },"json");
        }
    </script>
</head>

<body style="visibility: visible;">
<div id="wrap" class="wrap">
    <div id="device">
        <div class="com-head">
            <a id="back_logo" class="back_logo"></a>
            <script>
                $('#back_logo').on('click',function(){
                    history.back(-1);
                });
            </script>
                <span>远程控制</span>
            <input id="pageinfo" type="hidden" pagenum="1" pagesize="10" pagecount="1">
        </div>

            <%--<div class="com-select">--%>
                <%--<select name="farm_selector" id="q-device-farm">--%>
                    <%--<option value="">全部</option>--%>
                        <%--<option value="9ad87bac20c6417fbcc2d2189d2b6da7">智能大棚</option>--%>
                        <%--<option value="f27eeb87d80c495e98a841b872003fe8">示范基地</option>--%>
                <%--</select>--%>
            <%--</div>--%>
        <div style="padding-top: 10px;padding-left: 20px;padding-right:20px; align-content: center;width: 100%;">
                <div class="collector-head clearfix" >
                    <div class="com-helf-select fl" style="float: left">
                        <span style="">场地:</span>

                        <input type='hidden' id='agrSpaceName' name='agrSpaceName' value='${agrSpaceName}'/>
                        <select id='agrSpaceId' name='agrSpaceId' style="width: 120px;">
                            <c:if test='${not empty agrSpaceId}'>
                                <option value='${agrSpaceId}'>${agrSpaceName}</option>
                            </c:if>
                            <c:if test='${empty agrSpaceIdId}'>
                                <option value='-1'>全部</option>
                            </c:if>
                        </select>
                        <script>
                            function agrSpaceIdDataParser(data, selected) {
                                retval = [ { val: '-1' , text: '全部' } ];
                                list=data.result;
                                list.forEach(function(v){retval.push({ val: v.id , text: v.name });});
                                return retval;
                            }
                            $('#agrSpaceId').tinyselect({ dataUrl: '/resCenter/agrSpace/getAgrSpaceListJsonByUser.do?userId=${user.id}' , dataParser: agrSpaceIdDataParser});
                            $('#agrSpaceId').on('change',function() {
                                var text=$('#agrSpaceId option:selected').text();
                                $('#agrSpaceName').val(text);




                            });


                        </script>

                        <%--<select name="farm_selector" id="q-clt-farm">--%>
                        <%--<option value="9ad87bac20c6417fbcc2d2189d2b6da7" selected="">智能大棚</option>--%>
                        <%--<option value="f27eeb87d80c495e98a841b872003fe8">示范基地</option>--%>
                        <%--</select>--%>



                    </div>
                    <div class="com-helf-select fr" style="">
                        <span>主控:</span>
                        <input type='hidden' id='agrTerminalName' name='agrTerminalName' value='${agrTerminalName}'/>
                        <select id='agrTerminalId' name='agrTerminalId' style="width: 120px;">
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

                            var terminalDataList;
                            function loadTerminalData(agrTerminalId){
                                var url = "${ROOT}/resCenter/agrElectricalBox/getAgrElectricalBoxListJson.do";
                                var data = {};
                                data.agrTerminalId = agrTerminalId;
                                //转换为字符串
                                data = Func.parseParam(data);
                                $.post(url,data,function(j){
                                    if(j.code == 1){
                                        var rsData=j.result.item;
                                        terminalDataList=j.result.item;

                                        //loadData(1,rsData);




                                    var html="";
                                        html=html+"<ul class='row clearfix '>";
                                        for(i=0;i<rsData.length;i++){
                                            var o=rsData[i];
                                            html=html+"<div class='item fl ' boxid='"+o.id+"' state='001' name='100001'>";
                                            html=html+"<div class='item_head clearfix'>";
                                            html=html+"<p>开关：<span name='span"+o.id+"' id='span"+o.id+"'>";

                                            if(o.agrElectricalBoxStateId==1){
                                                html=html+"开";
                                            }else{
                                                html=html+"关";
                                            }

                                            html=html+"</span>";
                                            html=html+"</p>";
                                            html=html+"<a onclick='setvalue("+o.id+");return false;'>";
                                            if(o.agrElectricalBoxStateId==1){
                                                html=html+" <input type='hidden' id='evalue"+o.id+"' name='evalue"+o.id+"' value='1'/>";
                                            }else{
                                                html=html+" <input type='hidden' id='evalue"+o.id+"' name='evalue"+o.id+"' value='2'/>";
                                            }


                                            html=html+"<span name='spanclass"+o.id+"'";
                                            if(o.agrElectricalBoxStateId==1){
                                                html=html+" class='open'";
                                            }else{
                                                html=html+" class='close'";
                                            }

                                            html=html+"id='spanclass"+o.id+"'>";
                                            html=html+"</span>";
                                            html=html+"</a>";
                                            html=html+"</div>";
                                            html=html+"<div class='item_body'>";
                                            html=html+"<a class='wrap'>";
                                            if(o.agrElectricalBoxTypeId==1){
                                                html=html+"<span class='win_img'></span>";
                                            }
                                            if(o.agrElectricalBoxTypeId==2){
                                                html=html+"<span class='pumg_img'></span>";
                                            }
                                            if(o.agrElectricalBoxTypeId==3){
                                                html=html+"<span class='shade_img'></span>";
                                            }
                                            if(o.agrElectricalBoxTypeId==4){
                                                html=html+"<span class='curtain_img'></span>";
                                            }
                                            html=html+"<p>"+ o.name+"</p>";
                                            html=html+"</a>";
                                            html=html+"</div>";
                                            html=html+"</div>";
                                        }

                                        html=html+"</ul>";
                                        $("#elecBox").html(html);
                                        $("#elecBox").show();
                                    }else{
                                        $("#elecBox").html("");
                                        $("#elecBox").hide();
                                        alert(j.msg);
                                    }
                                },"json");
                            }

                            $('#agrTerminalId').tinyselect({ dataUrl: '/resCenter/agrTerminal/getAgrTerminalListJson.do' , dataParser: agrTerminalIdDataParser});
                            $('#agrTerminalId').on('change',function() {
                                var text=$('#agrTerminalId option:selected').text();
                                $('#agrTerminalName').val(text);
                                var agrTerminalId=$('#agrTerminalId').val();
                                if(agrTerminalId!=-1) {
                                    loadTerminalData(agrTerminalId);
                                }
                            });



                        </script>

                        <%--<select name="farm_selector" id="collector_selector">--%>
                        <%--<option value="10001" devicecode="7abe7cda1d994862b0a1fc29bdb7f9ad" selected="">大棚采集1</option>--%>
                        <%--<option value="10002" devicecode="16aade1d05264212a805efb718d39310">大棚采集2</option>--%>
                        <%--<option value="10003" devicecode="0009af60ccd149b3903d852b8f6f74ee">大棚采集3</option>--%>
                        <%--<option value="10004" devicecode="2f35149e7aa446e887f0f06ea5e4ed50">大棚采集4</option>--%>
                        <%--</select>--%>
                    </div>
                </div>
        </div>
        <div class="content" id="elecBox">
            <%--<ul class="row clearfix ">--%>
                <%--<c:forEach var="o" items="${list}">--%>
                        <%--<div class="item fl " boxid="${o.id}" state="001" name="100001">--%>
                            <%--<div class="item_head clearfix">--%>
                                <%--<p>开关：<span name="span${o.id}" id="span${o.id}">--%>
                                        <%--<c:if test="${o.agrElectricalBoxStateId==1}">开</c:if>--%>
                                        <%--<c:if test="${o.agrElectricalBoxStateId==2}">关</c:if>--%>
                                        <%--</span>--%>
                                <%--</p>--%>
                                <%--<a onclick="setvalue('${o.id}');return false;">--%>
                                    <%--<c:if test="${o.agrElectricalBoxStateId==1}"> <input type="hidden" id="evalue${o.id}" name="evalue${o.id}" value="1"/></c:if>--%>
                                    <%--<c:if test="${o.agrElectricalBoxStateId==2}"> <input type="hidden" id="evalue${o.id}" name="evalue${o.id}" value="2"/></c:if>--%>
                                <%--<span name="spanclass${o.id}"--%>
                                      <%--<c:if test="${o.agrElectricalBoxStateId==1}">class="open"</c:if>--%>
                                      <%--<c:if test="${o.agrElectricalBoxStateId==2}">class="close"</c:if>--%>
                                      <%--id="spanclass${o.id}">--%>
                                <%--</span>--%>
                                <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="item_body ">--%>
                                <%--<a class="wrap">--%>
                                    <%--<c:if test="${o.agrElectricalBoxTypeId==1}"><span class="win_img"></span></c:if>--%>
                                    <%--<c:if test="${o.agrElectricalBoxTypeId==2}"><span class="pumg_img"></span></c:if>--%>
                                    <%--<c:if test="${o.agrElectricalBoxTypeId==3}"><span class="shade_img"></span></c:if>--%>
                                    <%--<c:if test="${o.agrElectricalBoxTypeId==4}"><span class="curtain_img"></span></c:if>--%>
                                    <%--<p>${o.name}</p>--%>
                                <%--</a>--%>

                            <%--</div>--%>
                        <%--</div>--%>
                <%--</c:forEach>--%>
            <%--</ul>--%>
        </div>
    </div>

</div>




</body></html>