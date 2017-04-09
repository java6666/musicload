<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>歌曲信息</title>
</head>
<body>
<table>
    <tr>
        <td>${requestScope.music.musicName}</td>
    </tr>
    <tr>
        <td>${requestScope.music.lyrics}</td>
    </tr>
    <tr>
        <td>${requestScope.music.musicLinkAddress}</td>
    </tr>
</table>
</body>
</html>
