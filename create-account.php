<!doctype html>
<html lang="en">
  <head>
    <title>Hotel Sarajevo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Resort Inn Responsive , Smartphone Compatible web template , Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen">
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<!--font-->
<link href="//fonts.googleapis.com/css?family=Oswald:300,400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Federo" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
<!--//font-->
  </head>
<body>
 <style>
        body, html {
          height: 100%;
          margin: 0;
          background-image: url("images/55.jpg");
          background-position: center;
          background-repeat: no-repeat;
          background-size: cover;
        }
        </style> 
<div class="container">

	<?php

	include 'conn.php';

	$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

	// Provjera konekcije
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}
	
	// Upit za provjeru da li mail vec postoji
	$checkEmail = "SELECT * FROM users WHERE Email = '$_POST[email]' ";

	
	$result = $conn-> query($checkEmail);

	
	$count = mysqli_num_rows($result);

	// if count == 1 to znaci da mail vec postiji
	if ($count == 1) {
	echo "<div class='col-md-12 book-form-left-w3layouts'>
					<h1> Uspješno ste kreirali račun!</h1>
					
					<p><a button href='login.html'><button/>Molimo prijavite se ovdje!</p>
				</div>";
	} else {	
	
	$name = $_POST['name'];
	$email = $_POST['email'];
	$pass = $_POST['password'];
	
	$passHash = password_hash($pass, PASSWORD_DEFAULT);
	
	$query = "INSERT INTO users (Name, Email, Password) VALUES ('$name', '$email', '$passHash')";

	if (mysqli_query($conn, $query)) {
		echo "<div class='alert alert-success mt-4' role='alert'><h3>Vaš račun je kreiran.</h3>
		<a class='btn btn-outline-primary' href='login.html' role='button'>Prijava</a></div>";		
		} else {
			echo "Error: " . $query . "<br>" . mysqli_error($conn);
		}	
	}	
	mysqli_close($conn);
	?>
</div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
  </body>
</html>