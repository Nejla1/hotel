<!doctype html>

<html lang="en">
  <head>
    <title>Hotel Sarajevo</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
		<link rel="stylesheet" href="css/custom.css">
  </head>
  <body>
  <style>
        body, html {
          height: 100%;
          margin: 0;
          background-image: url("images/33.jpg");
          background-position: center;
          background-repeat: no-repeat;
          background-size: cover;
        }
        </style> 
  
  <div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h1>Hotel Sarajevo</h1>
				<p>Dobrodošli!</p>		
			</div>
	</div>
	
	<div class="row">	
		<div class="col-sm-12 col-md-6 col-lg-6">
		
		<h3>Kreiraj račun</h3><hr />
		
		<form method="post" action="create-account.php" method="POST">
			<div class="form-group">				
				<input type="text" class="form-control" name="name" placeholder="Unesite svoje ime" required>			
		  </div>
		  
		  <div class="form-group">				
				<input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Unesite svoj email" required>
			</div>
		  
		  <div class="form-group">				
				<input type="password" class="form-control" name="password" placeholder="Kreiraj lozinku" required>
			</div>
		  
		  <button type="submit" class="btn btn-success btn-block">Kreiraj</button>
		</form>		
		</div>		
		<div class="col-sm-12 col-md-6 col-lg-6">
			<h3>Prijava</h3><hr />
			<p>Već imate račun? <a href="login.html" title="Login Here">Prijavi se ovdje!</a></p>
		</div>
	</div>
</div>
  
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
 
	</body>
</html>