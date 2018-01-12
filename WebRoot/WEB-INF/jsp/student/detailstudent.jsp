<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'allstudent.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.1.2.2.js"></script>
    <link href="css/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
	
	<script type="text/javascript">
		function backallstudent()
		{
			location.href = "${pageContext.request.contextPath}/allstudent.action";
		}
	</script>
  </head>
  
  <body>
    <center>
    <div style="width: 450">
    <input type="hidden" name="stunum" value="${getOneStudentByStunum.stunum}" />
    	<table>
    	
    		<tr>
    			<th>学号</th>
    			<td>
    				<input name="stunum" type="text" readonly="readonly" value="${getOneStudentByStunum.stunum}">
    			</td>
    		</tr>
    		<tr class="space">
    			<td>&nbsp;</td>
    			<td>&nbsp;</td>
    		</tr>
    		<tr>
    			<th>姓名</th>
    			<td>
    				<input name="stuname" type="text" value="${getOneStudentByStunum.stuname}">
    			</td>
    		</tr>
    		<tr class="space">
    			<td>&nbsp;</td>
    			<td>&nbsp;</td>
    		</tr>
    		<tr>
    			<th>就业状态</th>
    			
			             	<td>
			             		<input name="emplstatus" type="text" value="${getOneStudentByStunum.emplstatus}" />
			             	</td>
    			
    		</tr>
    		<tr class="space">
    			<td>&nbsp;</td>
    			<td>&nbsp;</td>
    		</tr>
    		<tr>
    			<th>密码</th>
    			<td>
    				<input name="stuloginpwd" type="text" value="${getOneStudentByStunum.stuloginpwd}"/>
    			</td>
    		</tr>
    		<tr class="space">
    			<td>&nbsp;</td>
    			<td>&nbsp;</td>
    		</tr>
    		<tr>
    			<th>邮箱</th>
    			<td>
    				<input name="email" type="text" value="${getOneStudentByStunum.email}"/>
    			</td>
    		</tr>
    		<tr class="space">
    			<td>&nbsp;</td>
    			<td>&nbsp;</td>
    		</tr>
    		<tr>
    			<td colspan="2" style="text-align: center;">
    				<input type="button" value="返回" onclick="backallstudent()"/>
    			</td>
    		</tr>
    	</table>
    </div>
    </center>
  </body>
</html>
