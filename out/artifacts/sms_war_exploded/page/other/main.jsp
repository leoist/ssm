
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../../include/header.jsp" %>
<%@ include file="../../include/search.jsp" %>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<div style="width: 800px;margin: 50px auto;">
    <h1>欢迎进入郑州西亚斯学院超市管理系统</h1>
    <br/>
    <ul style="font-size: large;line-height: 28px">

        <li>系统：基于Java的超市管理系统</li>
        <li>系统后端基于Spring、SpringMVC、MyBatis</li>
        <li>系统设计模式：MVC设计模式</li>
    </ul>
</div>
<%@ include file="../../include/footer.jsp" %>
