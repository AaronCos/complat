<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>后台管理 - 易买网</title>
		<link type="text/css" rel="stylesheet" href="../css/style.css" />
		<script type="text/javascript" src="../scripts/function-manage.js">
</script>
		<script>
function Delete(id) {
	if (confirm("确定要删除吗？")) {
		location.href = "DoProductBackDelete?id=" + id;
	}
}
</script>
	</head>
	<body>
		<div id="header" class="wrap">
			<div id="logo">
				<img src="../images/logo.gif" />
			</div>
			<div class="help">
				<a href="../DoIndex">返回前台页面</a>
			</div>
			<div class="navbar">
				<ul class="clearfix">
					<li>
						<a href="index.jsp">首页</a>
					</li>
					<li>
						<a href="DoBackUserList">用户</a>
					</li>
					<li class="current">
						<a href="DoProductBackSelectAll">商品</a>
					</li>
					<li>
						<a href="DoBackOrderList">订单</a>
					</li>
					<li>
						<a href="DoBackCommentList">留言</a>
					</li>
					<li>
						<a href="DoBackNewsList">新闻</a>
					</li>
				</ul>
			</div>
		</div>
		<div id="childNav">
			<div class="welcome wrap">
				管理员${sessionScope.user.u_name }您好，今天是${sessionScope.strCurrentTime
				}，欢迎回到管理后台。
			</div>
		</div>
		<div id="position" class="wrap">
			您现在的位置：
			<a href="index.jsp">易买网</a> &gt; 管理后台
		</div>
		<div id="main" class="wrap">
			<div id="menu-mng" class="lefter">
				<div class="box">
					<dl>
						<dt>
							用户管理
						</dt>
						<dd>
							<em><a href="user-add.jsp">新增</a> </em><a href="DoBackUserList">用户管理</a>
						</dd>
						<dt>
							商品信息
						</dt>
						<dd>
							<em><a href="DoProductClassBackAddSelect">新增</a> </em><a
								href="DoProductClassBackSelect">分类管理</a>
						</dd>
						<dd>
							<em><a href="DoProductBackAddSelect">新增</a> </em><a
								href="DoProductBackSelectAll">商品管理</a>
						</dd>
						<dt>
							订单管理
						</dt>
						<dd>
							<a href="DoBackOrderList">订单管理</a>
						</dd>
						<dt>
							留言管理
						</dt>
						<dd>
							<a href="DoBackCommentList">留言管理</a>
						</dd>
						<dt>
							新闻管理
						</dt>
						<dd>
							<em><a href="news-add.jsp">新增</a> </em><a href="DoBackNewsList">新闻管理</a>
						</dd>
					</dl>
				</div>
			</div>
			<div class="main">
				<h2>
					商品管理
				</h2>
				<div class="manage">
					<h3>
						${Eorro}
					</h3>
					<table class="list">
						<tr>
							<th>
								ID
							</th>
							<th>
								商品名称
							</th>
							<th>
								操作
							</th>
						</tr>
						<f:forEach var="product" items="${requestScope.Products}">
							<tr>
								<td class="first w4 c">
									${product.id}
								</td>
								<td class="thumb">
									<img width="100" height="100" src="../${product.fileName}" />
									<a href="">${product.name}</a>
								</td>
								<td class="w1 c">
									<a
										href="DoProductBackModifySelect?id=${product.id}&name=${product.name}">修改</a>
									<a href="javascript:Delete(${product.id});">删除</a>
								</td>
							</tr>
						</f:forEach>
					</table>
					<div style="text-align: center">
						<f:if test="${requestScope.pageindex >1}">
							<a href="DoProductBackSelectAll?pageindex=${requestScope.pageindex -1}">上一页</a>
						</f:if>
						<f:if test="${requestScope.pageindex  == 1}">
							上一页
						</f:if>
						<f:if test="${requestScope.pageindex <requestScope.pagecount}">
							<a href="DoProductBackSelectAll?pageindex=${requestScope.pageindex +1}">下一页</a>
						</f:if>
						<f:if test="${requestScope.pageindex  == requestScope.pagecount}">
							下一页
						</f:if>
						<a href="DoProductBackSelectAll?pageindex=1">首页</a>
						<a href="DoProductBackSelectAll?pageindex=${pagecount}">末页</a>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div id="footer">
			Copyright &copy; 2010 北大青鸟 All Rights Reserved. 京ICP证1000001号
		</div>
	</body>
</html>
