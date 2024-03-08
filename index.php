<?php
	session_start();
		require("conection/connect.php");
	
	$msg="";
	if(isset($_POST['btn_log'])){
		$uname=$_POST['unametxt'];
		$pwd=$_POST['pwdtxt'];
		
		$sql=mysql_query("SELECT * FROM users_tbl
								WHERE username='$uname' AND password='$pwd' 
								
							");
						
		$cout=mysql_num_rows($sql);
			if($cout>0){
				$row=mysql_fetch_array($sql);
					if($row['type']=='admin')
						$msg="Login trov hery!.....";	
					else
						header("location: everyone.php");
					
			}
			
			else
					$msg="Invalid login authentication, try again!";
}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css.map"/>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-theme.css"/>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-theme.css.map"/>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-theme.min.css"/>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script><link rel="stylesheet" type="text/css"> <center><img src="images/123.jpg" width="1100"/>
</center><script type="text/javascript" src="bootstrap/js/bootstrap.min.js">
</script>

<title>Indian Academy Degree College | College management System.</title>
</head>

<body style="background-color:lightgreen;"><center> <img src="images/capture.png" height="90" alt="INDIAN ACADEMY DEGREE COLLEGE"  width="800" />
</center>            <center>	<div class="container">
    <style> .container{ background-color:lightgreen;} </style>	<div class="container2">
  		<div class="h1_pos">
    	<center><h1><p style="color:white">College authorities for only staff members. </p></h1></center>
    		</div><br><br><br>
    		<form method="post">
                    <input type="text" class="form-control" name="unametxt" placeholder="Enter your Username"  title="Enter username here" /><br>
                    <input type="password" class="form-control" name="pwdtxt" placeholder="Enter your Password"  title="Enter username here" /><br>
    		<center> <input type="submit" href="#" class="btn btn-default" name="btn_log" value="Sign in"  style="float: center;" />
  </center>  <br>		<div class="about_pos">
      </style>	              <a href="AboutManagement.php" style="text-decoration:none; color: black"><b>About Management</b></a>   		</div>
    		</form>
    	</div>
    </div>
	</center>
        <h2 style="color: #3a28a5; text-align: center;">
            <?php echo $msg; ?>
        </h2>    
</body>
</html>