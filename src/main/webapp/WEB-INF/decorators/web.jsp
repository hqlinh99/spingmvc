<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/commons/taglib.jsp" %>
<html>
<head>
    <title><dec:title/></title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>
<body class="bg-[#f5f5f5] font-['Roboto']">
<jsp:include page="/WEB-INF/commons/web/header.jsp"/>
<dec:body/>
<jsp:include page="/WEB-INF/commons/web/footer.jsp"/>
</body>
</html>