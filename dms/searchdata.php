
<?php

error_reporting(0);
include('admin/include/dbconnection.php');

?>


<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title> Directory Management System</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/heroic-features.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
    <div class="container">
      <a class="navbar-brand" href="index.php"> Directory Management System</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
       <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">

           <li class="nav-item active">
            <a class="nav-link" href="index.php">Home
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin/">Admin Login
              <span class="sr-only">(current)</span>
            </a>
          </li>

        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">





    <!-- Page Features -->

    <div class="row text-left" style="padding-top: 2%">

<?php
$sdata=$_POST['searchdata'];
  ?>
  <h4 align="center" style="color:red">Result against "<?php echo $sdata;?>" keyword </h4>
<?php
$ret=mysqli_query($con,"select * from tbldirectory where (FullName like '$sdata%'|| MobileNumber like '$sdata%') and (Status=1)");
$num=mysqli_num_rows($ret);
if($num>0){
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
      <div class="col-lg-12 col-md-6 mb-4" style="padding-top:2%">
        <div class="card h-100">
          <div class="card-body">
            <h4 class="card-title" align="center"><?php  echo $row['FullName'];?></h4>
            <p ><b>Mobile Number:</b> <?php  echo $row['MobileNumber'];?></p>
             <p class="card-text"><b>Email:</b> <?php  echo $row['Email'];?></p>
              <p class="card-text"><b>Profession:</b> <?php  echo $row['Profession'];?></p>
               <p class="card-text"><b>Address:</b> <?php  echo $row['Address'];?></p>
                 <p class="card-text"><b>City:</b> <?php  echo $row['City'];?></p>
          </div>
        </div>
      </div>
    <?php }  } else { ?>
 <div class="col-lg-12 col-md-6 mb-4" style="padding-top:2%">
        <div class="card h-100">
          <div class="card-body">
            <h4 class="card-title" align="center">No Result found against this search</h4>

          </div>
        </div>
      </div>
    <?php } ?>

</div></div>

<footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white"> <span>Copyright © <a href="https://geekcode.cf" target="_blank">Acarson DMS 2020</a></span></p>
    </div>
    <!-- /.container -->
  </footer>
</body>
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</html>
