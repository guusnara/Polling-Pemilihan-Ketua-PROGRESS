<?php session_start(); include('conn/conn.php'); ?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/style.css">
<title>Pemilu Raya UKM PROGRESS</title>
</head>

<body>
	<div class="container-fluid">
    	<div class="row">
        	
            <div class="col-md-12">
            	<div class="row">
                	<div class="col-md-12">
                        <div class="row">
                            <div class="progress-logo"></div>
                        </div>
                    </div>
                    <div class="col-md-12">
            			<div class="pemilu-caption">
                			<h1>Pemilu Raya UKM Progress 2015</h1>
                		</div>
                    </div>
                </div>
            </div>
        
        </div>
	</div>
    <div class="container">        
        <div class="row">
            
            <form action="proses.php" method="post" name="oke">
            	<div class="col-md-12">
                	<div class="row">
                    	<?php if(isset($_SESSION['msg']))	{ ?>
                            <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                                <div class="alert alert-danger alert-dismissible fade in" role="alert">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <strong>Kesalahan!</strong> <?= $_SESSION['msg']; ?><?php unset($_SESSION['msg']); ?>
                                </div>
                            </div>
                        <?php } ?>
                    	<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                            <div class="form-group">
                                <center><label for="nim">Masukkan NIM Anda</label></center>
                                <input type="number" maxlength="9" class="form-control input-lg" id="nim" name="nim" placeholder="Enter your NIM">
                            </div>
                        </div>
                    </div>	
                    <div style="margin-top:30px;"></div>
                </div>
                
                <div class="col-md-12">
                    <div class="calon-caption">
                        Calon Ketua UKM Progress Periode 2015/2016
                    </div>
                </div>
                
                <div class="col-md-12">
                    <p style="text-align:center; font-weight:bold; margin-bottom:30px;" class="text-danger"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> Klik salah satu foto atau nama untuk polling</p>
    
                    <div class="row" data-toggle="buttons">
                        <?php $data = mysql_query("select * from calon"); $no=1;
                        while ($row = mysql_fetch_array($data))	{ ?>
                            <div class="col-md-4 col-sm-4 margin">
                                <label class="btn btn-default btn-block btn-hover">
                                <input type="radio" name="ketua" class="opts" value="<?= $row[0]; ?>">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="candidate-number">
                                            <?= $no; ?><?php $no++; ?>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <img class="img-responsive img-thumbnail img-circle" src="<?= $row[2]; ?>">
                                    </div>
                                    <div class="col-md-12">
                                        <div class="candidate-name">
                                            <h4><?= $row[1]; ?></h4>
                                        </div>
                                    </div>
                                </div>
                                </label>
                                <div class="row">
                                    <div class="col-md-12">
                                        <button type="button" class="btn btn-block btn-visi-misi" data-toggle="modal" data-target="#visimisi" data-backdrop="static" data-img="<?= $row[2]; ?>" data-name="<?= $row[1]; ?>" data-visi="<?= $row[3]; ?>" data-misi="<?= $row[4]; ?>">Visi & Misi</button>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
    
                </div>
                
                <div class="col-md-12">
                    <div class="submit-btn">
                        <button name="submit" value="submit" type="submit" class="btn btn-success btn-lg">Vote <span class="glyphicon glyphicon-ok" aria-hidden="true"></span></button>
                    </div>
                </div>
            </form>
            
        </div>
	</div>
    <div class="footer">
    	<p>Copyright &copy; 2015 | Design by Guusnara</p>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="visimisi" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Visi & Misi</h4>
                </div>
                <div class="modal-body">
                	<div class="imgs"></div>
                    <div class="candidate-name"><h4></h4></div>
                    <div class="visi-misi-title">Visi</div>
                    <div class="visi"></div>
                    <div class="visi-misi-title">Misi</div>
                    <div class="misi"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    
    <script src="js/jquery-2.0.2.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script>
	$('#visimisi').on('show.bs.modal', function (event) {
		var button = $(event.relatedTarget)
		var recipient1 = button.data('img')
		var recipient2 = button.data('name')
		var recipient3 = button.data('visi')
		var recipient4 = button.data('misi')
		var modal = $(this)
		modal.find('.modal-body .imgs').html('<center><img class="img-responsive img-thumbnail img-circle" src="'+recipient1+'"></center>')
		modal.find('.modal-body .candidate-name h4').html(recipient2)
		modal.find('.modal-body .visi').html(recipient3)
		modal.find('.modal-body .misi').html(recipient4)
	})
	</script>
</body>
</html>