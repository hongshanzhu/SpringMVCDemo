<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/common.jsp" %>
<!DOCTYPE html>
<!-- saved from url=(0149)http://mqtt.gdyftech.cn/wechat/index.html#CollectorManage/list?placeCode=9ad87bac20c6417fbcc2d2189d2b6da7&deviceCode=7abe7cda1d994862b0a1fc29bdb7f9ad -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style class="vjs-styles-defaults">
        .video-js {
            width: 300px;
            height: 150px;
        }

        .vjs-fluid {
            padding-top: 56.25%
        }
    </style>
    <style class="vjs-styles-dimensions">
        .dimensions-3031b71aa30f4ee6b6fc451d4c5620e3 {
            width: 331.20000000000005px;
            height: 207px;
        }

        .dimensions-3031b71aa30f4ee6b6fc451d4c5620e3.vjs-fluid {
            padding-top: 56.25%;
        }
    </style>
    <style class="vjs-styles-dimensions">
        .dimensions-1bc54246c8de44c9aacb65dfdb273504 {
            width: 331.20000000000005px;
            height: 207px;
        }

        .dimensions-1bc54246c8de44c9aacb65dfdb273504.vjs-fluid {
            padding-top: 56.25%;
        }
    </style>
    <style class="vjs-styles-dimensions">
        .dimensions-02eb2c04b3424b92bb06593eb5a42afb {
            width: 331.20000000000005px;
            height: 207px;
        }

        .dimensions-02eb2c04b3424b92bb06593eb5a42afb.vjs-fluid {
            padding-top: 81.81818181818183%;
        }
    </style>

    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>农业4.0管理平台</title>
    <link type="text/css" rel="stylesheet" href="/js/msite/style.css">
    <link type="text/css" rel="stylesheet" href="/js/msite/font-awesome.min.css">
    <script src="/res/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="jquery-slim-scroll" src="/js/msite/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="handlebars"
            src="/js/msite/handlebars.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="md5"
            src="/js/msite/md5.min.js"></script>
    <link type="text/css" rel="stylesheet" href="/js/msite/video-js.min.css">
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="myvideojs"
            src="/js/msite/video(1).js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="myvideo-hls"
            src="/js/msite/videojs-contrib-hls.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="ctrl/home"
            src="/js/msite/home.js"></script>
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
            data-requiremodule="ctrl/collector-manage" src="/js/msite/collector-manage.js"></script>

    <%--<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="echarts" src="/js/msite/echarts.min.js"></script>--%>
    <script src="http://echarts.baidu.com/build/dist/echarts.js"></script>



    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="mqtt"
            src="/js/msite/mqttws31.js"></script>
    <link type="text/css" rel="stylesheet" href="/js/msite/mobiscroll.css">
    <script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="mobiletimer"
            src="/js/msite/mobiscroll.js"></script>
    <link rel="stylesheet" href="/css/tinyselect-m.css">
    <script src="/js/tinyselect.js"></script>
    <script src="/res/js/func.js"></script>
</head>

<body style="visibility: visible;">
<div id="wrap" class="wrap">
    <div id="collector">
        <div class="com-head">
            <a id="back_logo" class="back_logo"></a>
            <script>
                $('#back_logo').on('click',function(){
                    history.back(-1);
                });
            </script>
            <span>现场环境数据采集</span>
            <!--<a  href="#CollectorManage/search" class="search_logo"></a>-->
        </div>
        <div class="content">
            <div class="collector-head clearfix">
                <div class="com-helf-select fl">
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
                <div class="com-helf-select fr">
                    <span>采集器:</span>
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
                            var url = "${ROOT}/resCenter/agrTerminalData/getAgrTerminalDataListJson.do";
                            var data = {};
                            data.agrTerminalId = agrTerminalId;
                            //转换为字符串
                            data = Func.parseParam(data);
                            $.post(url,data,function(j){
                                if(j.code == 1){
                                    //parent.Func.reloadPage();
                                    var rsData=j.result.item;
                                    terminalDataList=j.result.item;

                                    $("#cur_airT").html(terminalDataList[0].airTemp);
                                    $("#cur_airH").html(terminalDataList[0].airHumidity);

                                    $("#cur_soilT").html(terminalDataList[0].soilTemp);
                                    $("#cur_soilH").html(terminalDataList[0].soilHumidity);

                                    $("#cur_lux").html(terminalDataList[0].lux);
                                    $("#cur_co2").html(terminalDataList[0].co2Concentration);

                                    loadData(1,rsData);

                                }else{
                                    alert(j.msg);
                                }
                            },"json");
                        }

                        $('#agrTerminalId').tinyselect({ dataUrl: '/resCenter/agrTerminal/getAgrTerminalListJson.do' , dataParser: agrTerminalIdDataParser});
                        $('#agrTerminalId').on('change',function() {
                            var text=$('#agrTerminalId option:selected').text();
                            $('#agrTerminalName').val(text);
                            var agrTerminalId=$('#agrTerminalId').val();
                            if(agrTerminalId!=-1){
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
                <%--<p>大棚场地数据采集情况</p>--%>
            </div>

            <div class="databody">
                <div class="current">
                    <div class="head">
                        <p>当前数据</p>
                    </div>
                    <ul class="list">
                        <li>
                            <div class="item ">
                                <span class="temperature"></span>
                                <sapn class="data"><span id="cur_airT">--</span>℃</sapn>
                                <p>空气温度</p>
                                <span class="line"></span>
                            </div>

                        </li>
                        <li>
                            <div class="item ">
                                <span class="humidity"></span>
                                <sapn class="data"><span id="cur_airH">--</span>%</sapn>
                                <p>空气湿度</p>
                                <span class="line"></span>
                            </div>
                        </li>
                        <li>
                            <div class="item ">
                                <span class="temperature"></span>
                                <sapn class="data"><span id="cur_soilT">--</span>℃</sapn>
                                <p>土壤温度</p>
                            </div>
                        </li>
                    </ul>
                    <ul class="list">
                        <li>
                            <div class="item ">
                                <span class="humidity"></span>
                                <sapn class="data"><span id="cur_soilH">--</span>%</sapn>
                                <p>土壤湿度</p>
                                <span class="line"></span>
                            </div>
                        </li>
                        <li>
                            <div class="item ">
                                <span class="sun"></span>
                                <sapn class="data"><span id="cur_lux">--</span>Lux</sapn>
                                <p>光照强度</p>
                                <span class="line"></span>
                            </div>
                        </li>
                        <li>
                            <div class="item ">
                                <span class="thickness"></span>
                                <sapn class="data"><span id="cur_co2">--</span>ppm</sapn>
                                <p>CO2浓度</p>

                            </div>
                        </li>
                    </ul>
                </div>
                <!--current-->

                <!--     数据变化情况    -->
                <div class="history">
                    <div class="head">
                        <p>数据变化情况</p>
                    </div>
                    <div class="selector clearfix">
                        <div class="selector_left fl">
                            <a class="wrap">
                                <span class="farm_icon"></span>
                            </a>
                            <select name="show-obj" id="show-obj">
                                <option value="1">空气温度</option>
                                <option value="2">空气湿度</option>
                                <option value="3">土壤温度</option>
                                <option value="4">土壤湿度</option>
                                <option value="5">光照强度</option>
                                <option value="6">CO2浓度</option>
                                <option value="7">含氧量</option>
                                <option value="8">PH值</option>
                                <option value="9">水温度</option>
                                <option value="10">水量</option>
                                <option value="11">溶氧度</option>
                            </select>
                            <script>

                                $('#show-obj').change(function(){
                                    var type=$('#show-obj').find('option:selected').attr('value');
                                    if(type<7){
                                    loadData(type,terminalDataList);
                                    }
                                    //alert($('#show-obj').find('option:selected').attr('selected', 'selected'));
                                });

                            </script>
                        </div>
                        <%--<div class="selector_right fr">--%>
                            <%--<ul>--%>
                                <%--<li>--%>
                                    <%--<a class="li-a clearfix">--%>
                                        <%--<lable class="label">时间间隔：</lable>--%>
                                        <%--<!--<span>adfasdf</span>-->--%>
                                        <%--<select name="" id="t-radio">--%>
                                            <%--<option value="1" name="t-radio">小时</option>--%>
                                            <%--<option value="2" name="t-radio">天</option>--%>
                                        <%--</select>--%>
                                    <%--</a>--%>

                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a class="li-a clearfix">--%>
                                        <%--<lable class="label">开始时间：</lable>--%>
                                        <%--<span class="updown"></span>--%>
                                        <%--<input value="" class="date" readonly="" name="startDate" id="startDate"--%>
                                               <%--type="text">--%>
                                    <%--</a>--%>
                                <%--</li>--%>
                                <%--<li>--%>
                                    <%--<a class="li-a clearfix">--%>
                                        <%--<lable class="label">结束时间：</lable>--%>
                                        <%--<span class="updown"></span>--%>
                                        <%--<input value="" class="date" readonly="" name="endtDate" id="endtDate"--%>
                                               <%--type="text">--%>
                                    <%--</a>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                    </div>
                    <!-- selector-->
                    <hr width="100%" color="#c0c0c0" size="1">
                    <div id="chartdata" style="width: 100%; height: 400px;background: #e0e0e0;">
                    </div>

                    <script type="text/javascript">
                        var myChart;
                        require.config({
                            paths: {
                                echarts: 'http://echarts.baidu.com/build/dist'
                            }
                        });
                        require(
                                [
                                    'echarts',
                                    'echarts/chart/line',   // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
                                    'echarts/chart/bar'
                                ],
                                function (ec) {
                                    myChart = ec.init(document.getElementById('chartdata'));
                                    //loadData(1,"");
                                }

                        );

                        function loadData(type,data){
                            var titleText="";
                            var titleTextMax="";
                            var titleTextMin="";
                            var dateArray;
                            var dataArrayMAX;
                            var dataArrayMin;




                            var dateArray=[];
                            var dataArrayMAX=[];
                            var formatString='{value} °C';
                            if(type==1){ //空气温度
                                 titleText="气温变化";
                                formatString='{value} °C';
                                 titleTextMax="气温";
                                 //titleTextMin="最低气温";
                                if(data!=null){
                                    for(i=0;i<data.length;i++){
                                        var o=data[i];
                                        dateArray[i]= o.createTime;
                                        dataArrayMAX[i]= o.airTemp;
                                        //alert(o.co2Concentration);
                                    }
                                }
                                 //dateArray=['周一','周二','周三','周四','周五','周六','周日'];
                                 //dataArrayMAX= [11, 11, 15, 13, 12, 13, 10];
                                 //dataArrayMin =[1, -2, 2, 5, 3, 2, 0];
                            }

                            if(type==2){ //空气湿度
                                titleText="湿度变化";
                                titleTextMax="湿度";
                                formatString='{value} °C';
                                if(data!=null){
                                    for(i=0;i<data.length;i++){
                                        var o=data[i];
                                        dateArray[i]= o.createTime;
                                        dataArrayMAX[i]= o.airHumidity;
                                        //alert(o.co2Concentration);
                                    }
                                }
                            }

                            if(type==3){ //土壤温度
                                titleText="土壤温度变化";
                                titleTextMax="温度";
                                formatString='{value} °C';
                                if(data!=null){
                                    for(i=0;i<data.length;i++){
                                        var o=data[i];
                                        dateArray[i]= o.createTime;
                                        dataArrayMAX[i]= o.soilTemp;
                                        //alert(o.co2Concentration);
                                    }
                                }
                            }

                            if(type==4){ //土壤湿度
                                titleText="土壤湿度变化";
                                titleTextMax="湿度";
                                formatString='{value} °C';
                                if(data!=null){
                                    for(i=0;i<data.length;i++){
                                        var o=data[i];
                                        dateArray[i]= o.createTime;
                                        dataArrayMAX[i]= o.soilHumidity;
                                        //alert(o.co2Concentration);
                                    }
                                }
                            }

                            if(type==5){ //光照度
                                titleText="光照度变化";
                                titleTextMax="光照度";
                                formatString='{value} Lux';
                                if(data!=null){
                                    for(i=0;i<data.length;i++){
                                        var o=data[i];
                                        dateArray[i]= o.createTime;
                                        dataArrayMAX[i]= o.lux;
                                        //alert(o.co2Concentration);
                                    }
                                }
                            }

                            if(type==6){ //CO2浓度 co2Concentration
                                titleText="二氧化碳浓度变化";
                                titleTextMax="浓度";
                                formatString='{value} ppm';
                                if(data!=null){
                                    for(i=0;i<data.length;i++){
                                        var o=data[i];
                                        dateArray[i]= o.createTime;
                                        dataArrayMAX[i]= o.co2Concentration;
                                        //alert(o.co2Concentration);
                                    }
                                }
                            }


                            option = {
                                title : {
                                    text: titleText,
                                    subtext: ''
                                },
                                tooltip : {
                                    trigger: 'axis'
                                },
                                legend: {
                                    data:[titleTextMax]
                                },
                                toolbox: {
                                    show : true,
                                    feature : {
                                        //mark : {show: true},
                                        //dataView : {show: true, readOnly: false},
                                        //magicType : {show: true, type: ['line', 'bar']},
                                        //restore : {show: true},
                                        saveAsImage : {show: true}
                                    }
                                },
                                calculable : true,
                                xAxis : [
                                    {
                                        type : 'category',
                                        boundaryGap : false,
                                        data :dateArray
                                    }
                                ],
                                yAxis : [
                                    {
                                        type : 'value',
                                        axisLabel : {
                                            formatter: formatString
                                        },
                                        splitNumber:10
                                    }
                                ],
                                series : [
                                    {
                                        name:titleTextMax,
                                        type:'line',
                                        data:dataArrayMAX,
                                        markPoint : {
                                            data : [
                                                {type : 'max', name: '最大值'}
                                            ]
                                        },
                                        markLine : {
                                            data : [
                                                {type : 'average', name: '平均值'}
                                            ]
                                        }
                                    }
                                ]
                            };
                            if(myChart!=null){
                                myChart.setOption(option);
                            }
                        }
                    </script>
                </div>

            </div>
            <!--databody-->

        </div>
        <!--body-->
    </div>

</div>


</body>
</html>