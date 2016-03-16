<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>加载地图</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/echarts/echarts.js"></script>
	<!-- <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.0.0.js"></script> -->
	<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/echarts/themes/dark.js"></script> --%>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-easyui-1.11.1/jquery-1.11.1.min.js"></script>
</head>
<body>
	<!-- 为 ECharts 准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
	    $.get('${pageContext.request.contextPath}/resources/echarts/maps/beijing.json', function (beijingJson) {
	        echarts.registerMap('beijing', beijingJson);
	        var chart = echarts.init(document.getElementById('main'));
	        chart.setOption({
	        	//backgroundColor: '#404a59',
	            geo: {
	                map: 'beijing',
	                label: {
	                    emphasis: {
	                        show: false
	                    }
	                },
	                itemStyle: {
	                    normal: {
	                        //areaColor: '#323c48',
	                        borderColor: '#111'
	                    },
	                    emphasis: {
	                        //areaColor: '#2a333d'
	                    }
	                }
	            }
	         
	        });
	    });
    </script>
</body>
</html>