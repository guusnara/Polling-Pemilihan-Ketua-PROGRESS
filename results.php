<?php session_start(); include('conn/conn.php'); ?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/style.css">
<link href="css/bars.css" rel="stylesheet">
<title>Pemilu Raya UKM PROGRESS</title>
</head>

<body>
    <?php if(@$_POST['as']=="sashihara")	{ ?>
	<div style="position:fixed; right:0; z-index:9999;">
    	<div class="submit-btns">
    	<button id="click" name="submit" value="submit" type="button" class="btn btn-success btn-lg">Lihat Perolehan Suara <span class="glyphicon glyphicon-ok" aria-hidden="true"></span></button>
        </div>
     </div>
    <div class="container">
    	<div style="margin-top:30px;"></div>    
        <div class="row">
            
            <div class="col-md-12">
            	<div class="calon-caption">
                	Perolehan Suara Pemilu Raya UKM Progress 2015
                </div>
            </div>
            
        	<div class="col-md-12">
            	<div class="row">
                	<?php $data = mysql_query("select * from calon"); $tot = 0;
					while ($row = mysql_fetch_array($data))	{ ?>
                        <div class="col-md-12 margin">
                            <div class="row">
                                <div class="col-md-3">
                                    <center><img class="img-responsive img-thumbnail img-circle fiximg" src="<?= $row[2]; ?>"></center>
                                </div>
                                <div class="col-md-9">
                                    <div class="fixbars">
                                    	<?php $dt = mysql_num_rows(mysql_query("select nim from mhs")); ?>
                                        <div class='bar_group' max='<?= $dt; ?>'>
                                        	<?php $count = mysql_fetch_array(mysql_query("select * from count where id_calon='$row[0]'")); ?>
                                            <div class='bar_group__bar thick c_red' label='<?= $row[1]; ?>' show_values='true' tooltip='true' value='<?= $count[2]; ?>'></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php $tot+=$count[2]; } ?>
                    <div class="col-md-12 margin">
                        <div class="row">
                            <div class="col-md-3">
                                <center><img class="img-responsive img-thumbnail img-circle fiximg" src="img/golput.jpg"></center>
                            </div>
                            <div class="col-md-9">
                                <div class="fixbars">
                                    <div class='bar_group' max='<?= $dt; ?>'>
                                        <div class='bar_group__bar thick c_red' label='Tidak Memilih' show_values='true' tooltip='true' value='<?= $dt-$tot; ?>'></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
	</div>

	<script src="js/jquery-2.0.2.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/bars.js"></script>
    <script>
	$( ".b_tooltip" ).hide();
	$("#click").click(function(){
		$( ".b_tooltip" ).show();
	});
	</script>
    <?php } else	{ ?>
    <div class="col-md-4 col-md-offset-4" style="margin-top:200px;">
    <form action="" method="post">
    	<input type="password" class="form-control" name="as"><button class="form-control" type="submit" value="ok">Ok</button>
    </form>
    </div>
    <?php } ?>
</body>
</html>