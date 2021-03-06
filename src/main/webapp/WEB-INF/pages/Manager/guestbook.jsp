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
					<li>
						<a href="DoProductBackSelectAll">商品</a>
					</li>
					<li>
						<a href="DoBackOrderList">订单</a>
					</li>
					<li class="current">
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
							<em><a href="user-add.jsp">新增</a>
							</em><a href="DoBackUserList">用户管理</a>
						</dd>
						<dt>
							商品信息
						</dt>
						<dd>
							<em><a href="DoProductClassBackAddSelect">新增</a>
							</em><a href="DoProductClassBackSelect">分类管理</a>
						</dd>
						<dd>
							<em><a href="DoProductBackAddSelect">新增</a>
							</em><a href="DoProductBackSelectAll">商品管理</a>
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
							<em><a href="news-add.jsp">新增</a>
							</em><a href="DoBackNewsList">新闻管理</a>
						</dd>
					</dl>
				</div>
			</div>
			<div class="main">
				<h2>
					留言管理
				</h2>
				<div class="manage">
					<table class="list">
						<tr>
							<th>
								ID
							</th>
							<th>
								姓名
							</th>
							<th>
								留言内容
							</th>
							<th>
								状态
							</th>
							<th>
								操作
							</th>
						</tr>
						<f:forEach items="${requestScope.comments}" var="com">
							<tr>
								<td class="first w4 c">
									${com.c_id }
								</td>
								<td class="w1 c">
									${com.c_nick_name }
								</td>
								<td>
									${com.c_content }
								</td>
								<f:if test="${com.c_reply != null}">
									<td class="w1 c">
										已回复
									</td>
								</f:if>
								<f:if test="${com.c_reply == null}">
									<td class="w1 c">
										未回复
									</td>
								</f:if>
								<td class="w1 c">
									<a href="DoBackGetCommentUpdate?commentId=${com.c_id }">回复</a>
									<a href="javascript:commentDelete(${com.c_id });">删除</a>
								</td>
							</tr>
						</f:forEach>
					</table>
					<div class="pager">
						<ul class="clearfix">
						<f:if test="${requestScope.pageIndex >1}">
							<a href="DoBackCommentList?pageIndex=${requestScope.pageIndex -1}">上一页</a>
						</f:if>
						<f:if test="${requestScope.pageIndex  == 1}">
							上一页
						</f:if>
						<f:if test="${requestScope.pageIndex <requestScope.pageCount}">
							<a href="DoBackCommentList?pageIndex=${requestScope.pageIndex +1}">下一页</a>
						</f:if>
						<f:if test="${requestScope.pageIndex  == requestScope.pageCount}">
							下一页
						</f:if>
						<a href="DoBackCommentList?pageIndex=1">首页</a>
						<a href="DoBackCommentList?pageIndex=${pageCount}">末页</a>
						</ul>
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
