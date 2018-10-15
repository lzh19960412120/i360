<?php
	require "conn.php";
	if(isset($_POST['account']) || isset($_POST['submit'])){
		$account=@$_POST['account'];
	}else{
		exit('非法操作');
	}
	$query="select * from useri360 where account='$account'";//是否存在account
	$result=mysql_query($query);
	
	if(mysql_fetch_array($result)){
		echo 'false';
	}else{
		echo 'true';
	}
	if(isset($_POST['submit']) && $_POST['submit']=="立即注册"){
		$account=$_POST['account'];
		$password=md5($_POST['password']);
		$query="insert useri360(sid,account,password,time) values(null,'$account','$password',NOW())";//数据加入数据库
		mysql_query($query);
		header('location:http://10.31.162.234/i360project/src/login.html');//页面的跳转C:\Users\lenovo\wamp\www\i360project\src\login.html
	}
?>