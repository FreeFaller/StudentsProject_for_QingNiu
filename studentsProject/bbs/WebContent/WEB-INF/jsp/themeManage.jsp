<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>themeManage</title>
</head>
<body>
<div>
<form action="">
模块名：
<input type="text" name="module_name">
创建人：
<input type="text" name="user_name">
主题：
<input type="text" name="theme">
<input type="submit" value="搜索" />
<input type="submit" value="重置" />
</form>
</div>

<br/>
<br/>

<div>
<button type="button">置顶</button>
<button type="button">取消置顶</button>
<button type="button">锁定</button>
<button type="button">解除锁定</button>
<button type="button">删除</button>
</div>

<br/>
<br/>

<div>
<table width="500" border="1">
<tr>
<td>模块名<td/>
<td>主题<td/>
<td>创建人<td/>
<td>是否置顶<td/>
<td>是否锁定<td/>
</tr>

<tr>
<td>test<td/>
<td>test<td/>
<td>admin<td/>
<td>是<td/>
<td>否<td/>
</tr>
</table>
</div>
</body>
</html>