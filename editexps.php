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

if(isset($_GET['d'])){
  $delid = $_GET['del'];
  $query=mysqli_query($con,"delete from expenses where id=$delid ");
  if ($query) {
    echo "<script>alert('Expense Deleted');</script>";

  }
}  

if(isset($_POST['add_exp']) && !empty($_FILES["file"]["name"]))
  {  
    // FILE BEGIN
    $vid = $_GET['v'];
    $exp = $_POST['expense'];
    $amt = $_POST['amount'];
    $targetDir = "uploads/";
    $fileName = basename($_FILES["file"]["name"]);
    $targetFilePath = $targetDir . $fileName;
    $fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);

    // Allow certain file formats
    $allowTypes = array('jpg','png','jpeg','gif','pdf');
    if(in_array($fileType, $allowTypes)){
        // Upload file to server
        $temp = explode(".", $_FILES["file"]["name"]);
        $newfilename = round(microtime(true)) . '.' . end($temp);
        if(move_uploaded_file($_FILES["file"]["tmp_name"], $targetDir. $newfilename)){
            // Insert image file name into database
            $query=mysqli_query($con,"INSERT into expenses(visit_id, expense, amount, image) VALUES ('$vid','$exp','$amt','".$newfilename."');");
            if($query){
                header('location:editexps.php?v='.$_GET['v']);
            }else{
                $msg = "File upload failed, please try again.";
            } 
        }else{
            $msg = "Sorry, there was an error uploading your file.";
        }
    }else{
        $msg = 'Sorry, only JPG, JPEG, PNG, GIF, & PDF files are allowed to upload.';
    }

    // FILE END
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

  <title>Add Expenses</title>

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
          <div class="row">
            <div class="col-md-6">
                <h1 class="h3 mb-4 text-gray-800">Add Expenses</h1>
                <div class="form-wrap">
                <?php echo $msg;?>

                <form action="editexps.php?v=<?php echo $_GET['v'];?>" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="expense">Expense Detail</label>
                    <input type="text" name="expense" class="form-control form-control-user" required>
                </div>
                <div class="form-group">
                    <label for="amount">Amount</label>
                    <input type="number" name="amount" class="form-control form-control-user" required>
                </div>
                <div class="form-group">
                    <label for="image">Receipt</label>
                    <input type="file" style="padding:3px;" name="file" class="form-control form-control-user" required>
                </div>
                <button type="submit" name="add_exp" class="btn btn-primary">Add Expense</button>
                </form>
                </div>
            </div>
            <div class="col-md-6">
                <div id="accordion" class="exp-show" >
                <h3>Expenses</h3>
                <?php
                $vid=$_GET['v'];
                $query=mysqli_query($con,"select * from expenses where visit_id=$vid order by id desc;");
                $row=mysqli_num_rows($query);
                if($row>0){
                    while($show_exp = mysqli_fetch_array($query)){ ?>
                        <!-- EXPENSE RESULT -->
                        <div class="card">
                            <div class="card-header" id="headingOne">
                            <h5 class="mb-0">
                                <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <?php echo $show_exp['expense'].' - '.$show_exp['amount']; ?>
                                </button>
                                <a href="editexps.php?v=<?php echo $show_exp['visit_id'];?>&d=true&del=<?php echo $show_exp['id']?>" style="color:red;" class="btn btn-default view-btn" >x</a>
                            </h5>
                            </div>

                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="card-body">
                                <img class="proof-img" src="uploads/<?php echo $show_exp['image'];?>" alt="">
                                <a href="uploads/<?php echo $show_exp['image'];?>" target="_blank" class="btn btn-default view-btn" >View</a>
                                <?php if ($show_exp['status']==1) { ?>
                                    <a style="color:green;" class="btn btn-default view-btn" >Approved</a>
                                <?php }
                                elseif ($show_exp['status']==0) { ?>
                                  <a style="color:red;" class="btn btn-default view-btn" >Approval Pending</a>
                              <?php }
                                else { ?>
                                    <a style="color:yellow;" class="btn btn-default view-btn" >Approval Pending</a>
                                <?php } ?>
                            </div>
                            </div>
                        </div>

                        <!-- EXPENSE RESULT END-->
                <?php  }
                } else { ?>
                    <h3>No Expenses Yet</h3>
                <?php } ?>
                </div>
            </div>

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
