<?php
require 'conn.php';
$message = '';
if (isset ($_POST['Name']) && isset($_POST['Email']) ) {
  $Name = $_POST['Name'];
  $Email = $_POST['Email'];
  $sql = 'INSERT INTO users(Name, Email) VALUES(:Name, :Email)';
  $statement = $db->prepare($sql);
  if ($statement->execute([':Name' => $Name, ':Email' => $Email])) {
    $message = 'Uspješno ste unijeli podatke';
  }



}


 ?>
<?php require 'header2.php'; ?>

<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Kreiraj novog korisnika</h2>
      <a href="index2.php">Nazad</a>
    </div>
    <div class="card-body">
      <?php if(!empty($message)): ?>
        <div class="alert alert-success">
          <?= $message; ?>
        </div>
      <?php endif; ?>
      <form method="post">
        <div class="form-group">
          <label for="Name">Ime</label>
          <input type="text" name="Name" id="Name" class="form-control">
        </div>
        <div class="form-group">
          <label for="Email">E-mail</label>
          <input type="text" name="Email" id="Email" class="form-control">
        </div>
        

        <div class="form-group">
          <button type="submit" class="btn btn-info">Kreiraj</button>
        </div>
      </form>
    </div>
  </div>
</div>

