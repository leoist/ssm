<%--
  Created by IntelliJ IDEA.
  User: Wang XiaoLong
  Date: 2022/4/24
  Time: 15:38
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>

<style>
    #sias_img {
        position: relative;
        top: -8px;
        padding: 0;
    }
</style>

<script>
    /*删除选中用户*/
    function deleteSelectedUser(id, username) {
        if (confirm("您确定注销用户【" + username + "】吗？")) {
            location.href = "${APP_PATH}/deleteCurrentUser?id=" + id;
        }
    }
</script>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand active" href="${APP_PATH}/home">
                <img id="sias_img" alt="Brand" src="${APP_PATH}/sias.png" width="36">
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="${APP_PATH}/toCheckout">结算服务 <span class="sr-only">(current)</span></a></li>
                <li><a href="${APP_PATH}/product/productList">商品库存</a></li>
                <li><a href="${APP_PATH}/group/groupList">商品分类</a></li>
                <li><a href="${APP_PATH}/provider/providerList">供应商管理</a></li>
                <li><a href="${APP_PATH}/sale/toSale">销售统计</a></li>
                <c:if test="${sessionScope.user.role == 'admin'}">
                    <li><a href="${APP_PATH}/userList">用户管理</a></li>
                </c:if>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${APP_PATH}/exit">退出登录</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">${sessionScope.user.username} <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="${APP_PATH}/toUpdateCurrentPasswordPage">
                                修改密码
                            </a>
                        </li>
                        <li>
                            <a href="javascript:deleteSelectedUser(`${sessionScope.user.id}`,
                            `${sessionScope.user.username}`);" style="color: red">
                                注销用户
                            </a>
                        </li>

                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>


<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>

            </div>
            <div class="modal-body">
                <p>

                </p>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- /.modal -->