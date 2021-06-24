<?php session_start(); include('conn/conn.php');

if(isset($_POST['submit']) && isset($_POST['nim']) && isset($_POST['ketua']) && !empty($_POST['nim']) && !empty($_POST['ketua']))	{
	$nim = $_POST['nim'];
	$ketua = $_POST['ketua'];
	if(mysql_num_rows(mysql_query("select * from mhs where nim='$nim'"))==1)	{
		$ddd = mysql_fetch_array(mysql_query("select * from mhs where nim='$nim'"));
		$name = $ddd['1'];
		if(mysql_num_rows(mysql_query("select * from pemilih where nim='$nim'"))>0)	{
			$_SESSION['msg']="Anda Sudah Melakukan Poling";
			header('location:index.php');
		} else	{
			$set = mysql_fetch_array(mysql_query("select * from count where id_calon='$ketua'"));
			$tmp=$set[2];
			$tot=$tmp+1;
			if(mysql_query("insert into pemilih values('$nim','$name','$ketua')") && mysql_query("update count set total_suara='$tot' where id_calon='$ketua'"))	{
				$msg = 1;
			} else	{
				mysql_query("delete from pemilih where nim='$nim'");
				mysql_query("update count set total_suara='$tmp' where id_calon='$ketua'");
				$_SESSION['msg']="Gagal Melakukan Poling";
				header('location:index.php');
			}
		}
	} else	{
		$_SESSION['msg']="NIM Anda Tidak Terdaftar Dalam Keanggotaan UKM Progress";
		header('location:index.php');
	}
} else	{
	$_SESSION['msg']="Tidak Bisa Melakukan Poling";
	header('location:index.php');
}
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Pemilu Raya UKM PROGRESS</title>
</head>

<body>
<center>
	<h1>Terimakasih <?= $name; ?> Sudah Melakukan Poling</h1>
    <div id="timer"><h4>Tab ini Akan Diarahkan ke halaman google Dalam 5</h4></div>
</center>
<script>
var count=6;

var counter=setInterval(timer, 1000); //1000 will  run it every 1 second

function timer()
{
  count=count-1;
  if (count <= 0)
  {
	 clearInterval(counter);
	 //counter ended, do something here
	 window.location.href='http://www.google.com';
	 return;
  }

  //Do code for showing the number of seconds here
  document.getElementById("timer").innerHTML='<h4>Tab ini Akan Diarahkan ke halaman google Dalam '+ count + '</h4>'; // watch for spelling
}
</script>
</body>
</html>