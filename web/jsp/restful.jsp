<%--
  Created by IntelliJ IDEA.
  User: 和学博
  Date: 2020/11/26
  Time: 8:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js">
    </script>
    <script type="text/javascript">
        function search(){
            // 获取输入的查询编号
            var id = $("#number").val();
            $.ajax({
                url : "${pageContext.request.contextPath }/user/"+id,
                type : "GET",
                //定义回调响应的数据格式为JSON字符串,该属性可以省略
                dataType : "json",
                //成功响应的结果
                success : function(data){
                    if(data.username != null){
                        alert("您查询的用户是："+data.username);
                    }else{
                        alert("没有找到id为:"+id+"的用户！");
                    }
                }
            });
        }
    </script>
</head>
<body>
<form action="">
    编号:<input type="text"  name="number" id="number">
    <input type="button" value="搜索" onclick="search()">
</form>
</body>
</html>
