<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
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
	<div>
		<a href='<?php echo site_url('dashboard/database')?>'>Home</a> |
		<a href='<?php echo site_url('statistics/')?>'>Basic Statistics</a> |
		<a href='<?php echo site_url('statistics/patients')?>'>Patients Statistics</a> |
		<a href='<?php echo site_url('statistics/interventions')?>'>Interventions Statistics</a> |
	
		
	</div>
	<div style='height:20px;'></div>  

    <div>
		<b><?php echo $home; ?></b>
			
    </div>
    <br>

<div>
	<p class="bg-primary"> <b> 1. Date referitoare la pacient</b></p>
	<p class="bg-success"> Total number of included patients: <b><?php echo $pacienti; ?></b></p>
	<p class="bg-info"> Total number of in progress patients: <b><?php echo $pacienti_progress; ?></b></p>
	<p class="bg-warning">Total number of new patients: <?php echo $pacienti_new; ?></b></p>
	<p class="bg-warning">Total number of finished patients: <?php echo $pacienti_end; ?></b></p>
	<p class="bg-danger"> Numarul pacientilor decedati : <b><?php echo $dead; ?></b> </p>
	<br>
	<p class="bg-primary"> <b> 1.2. Age categories</b> (status ='Finished' OR status ='In progress' OR status ='new' OR status ='dead')</p>
	<p class="bg-success"> < 30 years: <b><?php echo $varsta['sub_30']; ?></b></p>
	<p class="bg-success">  31 - 40 years: <b><?php echo $varsta['rg_31_40'];; ?></b></p>
	<p class="bg-success">  41 - 50 years: <b><?php echo $varsta['rg_41_50']; ?></b></p>
	<p class="bg-success">  51 - 60 years: <b><?php echo $varsta['rg_51_60']; ?></b></p>
	<p class="bg-success">  61 - 70 years: <b><?php echo $varsta['rg_61_70']; ?></b></p>
	<p class="bg-success">  71 - 80 years: <b><?php echo $varsta['rg_71_80']; ?></b></p>
	<p class="bg-success"> >80 years: <b><?php echo $varsta['peste_80']; ?></b></p>
</div>
<br>
<div>
	<p class="bg-primary"> <b> 2. Gender:</b></p>
	<p class="bg-success"> Male: <b><?php echo $gender_male; ?></b></p>
	<p class="bg-info"> Female: <b><?php echo $gender_female; ?></b></p>	
	
</div>
















</body>
</html>
