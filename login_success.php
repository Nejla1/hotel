<?php  
 //login_success.php  
 session_start();  
 if(isset($_SESSION["email"]))  
 {  
      echo '<h3>Uspješna prijava, Dobrodošli - '.$_SESSION["email"].'</h3>';  
     
 }  
 else  
 {  
      header("location:login.php");  
 }  
 ?>