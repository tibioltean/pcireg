<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VioTib Network Tool</title>
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
            <span class="brand">Network Management</span>
            <ul class="nav">
             	<li><a href="<?=site_url('dashboard/')?>">Dashboard</a></li>
                <li><a href="<?php echo site_url('admin/sisteme')?>">Sisteme</a></li>
                <li><a href="<?php echo site_url('admin/imprimante')?>">Imprimante</a></li>
                <li><a href="<?php echo site_url('admin/servere')?>">Servere</a></li>
                <li><a href="<?php echo site_url('admin/echipamente')?>">Echipamente retea</a></li>
                <li><a href="<?php echo site_url('admin/service')?>">Fisa Interventie/Service/Revizie</a></li>
                <li><a href="<?php echo site_url('admin/backup')?>">Backup</a></li>
                <li><a href="<?php echo site_url('admin/setari')?>">Setari</a></li>
                <li class="pull-right"><a href="<?=site_url('dashboard/logout')?>">Logout</a></li>
             
              
            </ul>
        </div>
    </div>
</div>
	
	<div style='height:20px;'></div>  
    <div>
		<?php echo $output; ?>
    </div>

    </div>
<!-- end:container -->

<div class="container">
    <div class="row">
        <div class="col-md-12" align="right">
                    &copy; 2015 VioTib.com | By : <a href="http://www.viotib.com/" target="_blank">Tiberiu Oltean</a>
         </div>

    </div>
</div>   

</body>
</html>
</body>
</html>
