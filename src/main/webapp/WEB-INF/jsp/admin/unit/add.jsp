<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>" />
<meta charset="UTF-8">
<link rel="stylesheet" href="css/amazeui.min.css" />
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/jquery.scroll-follow.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/amazeui.min.js"></script>
<script type="text/javascript" src="js/json2.js"></script>
<script type="text/javascript">
 /*  function btn_modify(){
	 var username = $("#username").val().trim();
	 var password = $("#password").val().trim();
	 var mobile = $("#mobile").val().trim();
	 var roler = $("#roler").val().trim();
	 var address = $("#address").val().trim();
	 console.info("address:"+address+",username:"+username+",password:"+password+",mobile:"+mobile+",roler:"+roler);
	 var data2={"username":username,"password":password,"mobile":mobile,"roler":roler,"address":address};//json对象 
	 $.ajax({
		 type: "post",
         url: "admin/list/unit/add",
         datatype: "json",
         contentType:"application/json",
         data:JSON.stringify(data2),
         success: function(data
        		 ) {
        	 window.location.href = "admin/list/unit/"
         }
     }); 
 }  */
 
</script>
<title>列表</title>

</head>
<body>
   <%@include file="../../../common/afterbar.jsp"%>
     <form  action="admin/list/unit/add" id="userInfo" method="post">
     <!--  <div><span>id:</span>
        <input type="text" id="id" name="id" >
      </div> -->
      <div><span>用户名:</span>
      <input type="text" id="username" name="username" >
     </div>
      <div><span>密码:</span>
      <input type="text" id="password" name="password" >
     </div>
      <div><span>手机:</span>
      <input type="text" id="mobile" name="mobile" >
     </div>
     <div><span>权限名字:</span>
      <input type="text" id="roler" name="roler" >
     </div>
      <div><span>地址:</span>
      <input type="text" id="address" name="address" >
     </div>
     <div>
      <!--  <button id="btn_modify" onclick="btn_modify()">提交</button> -->
      <input type="submit" id="sub" value="提交">
     </div>
 </form>
</body>
</html>
