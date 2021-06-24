<?php
	mysql_connect('localhost','root','') or die(mysql_error());
	mysql_select_db('poling_progress');
?>
<?php 
	date_default_timezone_set("Asia/Bangkok");
	$datenow = date("Y-m-d");
?>