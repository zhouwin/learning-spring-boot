<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function testJson(){
		var pname=$("#pname").val();
		var password=$("#password").val();
		var page=$("#page").val();
		$.ajax({
			url:"${pageContext.request.contextPath}/testJson",
			type:"post",
			data:JSON.stringify({pname:pname,password:password,page:page}),
			contentType:"application/json;charset=utf-8",
			dataType:"json",
			success:function(data){
				if(data!=null){
					alert("输入的用户名："+data.pname+",密码："+data.password+",年龄："+data.page);
				}
			}
		});
	}
</script>
</head>
<body>
	<form action="">
		用户名：<input type="text" name="pname" id="pname"/><br/>
		密码：<input type="password" name="password" id="password"/><br/>
		年龄：<input type="text" name="page" id="page"/><br/>
		<input type="button" value="测试" onclick="testJson()"/>
	</form>
</body>
</html>