<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PCI Registry</title>
    <link rel="stylesheet" href="<?=base_url()?>public/third-party/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?=base_url()?>public/css/style.css" />
<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<style type='text/css'>
body
{
	font-family: Arial;
	font-size: 14px;
}
a {
    color: blue;
    text-decoration: none;
    font-size: 14px;
}
a:hover
{
	text-decoration: underline;
}
</style>
</head>
<body>


<div class="navbar">
    <div class="navbar-inner">
        <div class="container">
            <span class="brand">PCI Registry</span>
            <ul class="nav">
             	<li><a href="<?=site_url('dashboard/database')?>">Patients</a></li>
                <?php 
                 $drp = $this->session->userdata('user_type');
                 //print_r($drp);
                 if($drp == "admin"){          
       
                 
                 ?>
                <li><a href="<?php echo site_url('dashboard/database')?>">Statistics</a></li>
           
                <li><a href="<?php echo site_url('admin/users')?>">Settings</a></li>
                 <?php } ?>        
                <li class="pull-right"><a href="<?=site_url('dashboard/logout')?>">Logout</a></li>
            </ul>
        </div>
    </div>
</div>
	
	<div style='height:20px;'>
    <?php //echo "Patient Name:     ;  CNP:      ..... SEX ......."; ?> </div>  
    <div>
		<?php echo $output; ?>
    </div>

    </div>
<!-- end:container -->

<div class="container">
    <div class="row">
        <div class="col-md-12" align="right">
                    &copy; 2015 IUBCvT | By : Registry for Percutaneous Coronary Interventions
         </div>

    </div>
</div>   

</body>
</html>
</body>
</html>
