<%--
  Created by IntelliJ IDEA.
  User: 31584
  Date: 2022/12/29
  Time: 0:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增朋友</small>
                </h1>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/Friend/addFriend" method="post">
            <div class="form-group">
                <label >朋友姓名：</label>
                <input type="text" name="name" class="form-control"  required>
            </div>
            <div class="form-group">
                <label >朋友年龄：</label>
                <input type="text" name="age" class="form-control" required>
            </div>
            <div class="form-group">
                <label>朋友爱好：</label>
                <input type="text" name="hobby" class="form-control"  required>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="添加"  >
            </div>

        </form>
    </div>


</div>
</body>
</html>
