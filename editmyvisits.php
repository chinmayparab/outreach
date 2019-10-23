<?php
session_start();
// error_reporting(0);
include('includes/dbconnection.php');
//error_reporting(0);
// echo '<script>alert('.$_SESSION['empcode'].$_SESSION['uid'].');</script>';
$msg='';
if (strlen($_SESSION['uid']==0)) {
  header('location:logout.php');
  } else{

if(isset($_POST['add_clg']))
  {  
    $empcode = $_SESSION['empcode'];
    $clg = $_POST['college_visited'];
    $date = $_POST['date'];
    $addr = $_POST['address'];
    $faculty = $_POST['assisting_faculty'];

    $query=mysqli_query($con, "INSERT INTO visits(empcode, college_visited, date, address, assisting_faculty) VALUES ('$empcode','$clg','$date','$addr','$faculty');");
    if ($query) {
    $msg="Your Visit has been updated.";
  }
  else
    {
      $msg="Something Went Wrong. Please try again.";
    }
  }
  ?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Add Visits</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link href="css/custom.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
  <?php include_once('includes/sidebar.php')?>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
         <?php include_once('includes/header.php')?>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Add Visits</h1>
          <div class="form-wrap">
          <?php echo $msg;?>
          <form action="editmyvisits.php" method="post">
          <div class="form-group">
            <label for="college_visited">College Name</label>
            <input type="text" name="college_visited" class="form-control form-control-user" required>
          </div>
          <div class="form-group">
            <label for="date">Date</label>
            <input type="date" name="date" class="form-control form-control-user" required>
          </div>
          <div class="form-group">
            <label for="address">College Address</label>
            <textarea class="form-control form-control-user" rows="5" name="address" required></textarea>
          </div>
          <div class="form-group">
            <label for="assisting_faculty">Assisting Faculty</label>
            <input type="text" name="assisting_faculty" class="form-control form-control-user" required>
          </div>
          <button type="submit" name="add_clg" class="btn btn-primary">Add Visit</button>
          </form>
          </div>
      
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
   <?php include_once('includes/footer.php');?>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
  <script type="text/javascript">
    $(".jDate").datepicker({
    format: 'yyyy-mm-dd',
    autoclose: true
}).datepicker("update", "10/10/2016"); 
  </script>

</body>

</html>
<?php }  ?>
