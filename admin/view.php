<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
//error_reporting(0);
if (strlen($_SESSION['aid']==0)) {
  header('location:logout.php');
  } else{

    if(isset($_POST['submit']))
    {
    $eid=$_GET['e'];
      $query=mysqli_query($con,"select * from studetail where ID='$eid'' ");
      if ($query) {
      $msg="Your Expirence data has been submitted succeesfully.";
    }
    else
      {
        $msg="Something Went Wrong. Please try again.";
      }
    }
  
if(isset($_POST['submit']))
  {
    $eid=$_GET['e'];
      $coursepg=$_POST['coursepg'];
    $schoolclgpg=$_POST['schoolclgpg'];
    $yoppg=$_POST['yoppg'];
    $pipg=$_POST['pipg'];
    $coursegra=$_POST['coursegra'];
    $schoolclggra=$_POST['schoolclggra'];
    $yopgra=$_POST['yopgra'];
    $pigra=$_POST['pigra'];
    $coursessc=$_POST['coursessc'];
    $schoolclgssc=$_POST['schoolclgssc'];
    $yopssc=$_POST['yopssc'];
    $pissc=$_POST['pissc'];
    $coursehsc=$_POST['coursehsc'];
    $schoolclghsc=$_POST['schoolclghsc'];
    $yophsc=$_POST['yophsc'];
    $pihsc=$_POST['pihsc'];
    
     $query=mysqli_query($con, "update empeducation set CoursePG='$coursepg', SchoolCollegePG='$schoolclgpg', YearPassingPG='$yoppg',  PercentagePG= '$pipg', CourseGra='$coursegra',  SchoolCollegeGra='$schoolclggra', YearPassingGra= '$yopgra', PercentageGra='$pigra', CourseSSC='$coursessc', SchoolCollegeSSC='$schoolclgssc', YearPassingSSC= '$yopssc', PercentageSSC= '$pissc', CourseHSC='$coursehsc', SchoolCollegeHSC='$schoolclghsc', YearPassingHSC='$yophsc', PercentageHSC='$pihsc' where ID='$eid'");
    if ($query) {
    $msg="Employee Education data has been updated succeesfully.";
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

  <title>Visits</title>

  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../css/sb-admin-2.min.css" rel="stylesheet">
  <link href="../css/custom.css" rel="stylesheet">
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
          <h1 class="h3 mb-4 text-gray-800">Visits</h1>

<p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>

<div class="row">
  <?php 
    $eid=$_GET['e'];
    $ret=$_GET['c'];
    //$ret=mysqli_query($con,"select empcode from studetail where id=$eid");
    $query=mysqli_query($con,"select * from visits where empcode=$ret");
$rowno=mysqli_num_rows($query);
if($rowno>0){ 
  while($row = mysqli_fetch_array($query)) {?>
  <!-- CARD BEGINS -->
  <?php
$visid = $row['id'];
$query2=mysqli_query($con,"select * from expenses where visit_id=$visid");
$rowno2=mysqli_num_rows($query2);
$amount = 0;
if($rowno2>0){ 
  while($row2 = mysqli_fetch_array($query2)) { 
    $amount = $amount + $row2['amount']; 
  }
}
 ?>
<div class="col-md-3">
<div class="card shadow">
  <div class="card-body">
    <h5 class="card-title"><?php echo $row['college_visited'];?></h5>
    <p class="card-text"><?php echo $row['address'];?></p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item"><?php echo $row['date'];?></li>
    <li class="list-group-item"><?php echo $row['assisting_faculty'];?></li>
    <li class="list-group-item">Total Expenses: <?php echo $amount;?> Rs</li>
  </ul>
  <div class="card-body">
    <a href="jhalak.php?v=<?php echo $row['id'];?>" class="card-link">View Visit</a>
  </div>
</div>
<br>
</div>

<!-- CARD ENDS -->
<?php }?>
</div>  
<?php
} else {?>
 
 <h2>No Records Found</h2>

<?php } ?> 


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
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../js/sb-admin-2.min.js"></script>
  <script type="text/javascript">
    $(".jDate").datepicker({
    format: 'yyyy-mm-dd',
    autoclose: true
}).datepicker("update", "10/10/2016"); 
  </script>
<script src="../vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="../js/demo/datatables-demo.js"></script>
</body>

</html>
<?php }  ?>
