<%--
  Created by IntelliJ IDEA.
  User: 和学博
  Date: 2020/11/25
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js">
    </script>
    <script type="text/javascript">
        function testJson() {
            let username = $("#username").val();
            let password = $("#password").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/testJson",
                type: "post",
                data:JSON.stringify({username:username,password:password}),
                contentType: "application/json;charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data != null) {
                        alert("那你输入的用户名为:" + data.username + "密码为:" + data.password);
                    }
                }
            })

        }
    </script>
</head>
<body>
<form>
    用户: <input id="username" name="username" type="text"><br>
    密&nbsp;&nbsp;&nbsp;码 <input id="password" name="password" type="password"><br>
    <input type="button" value="测试json交互" onclick="testJson()">
</form>
</body>
</html>
