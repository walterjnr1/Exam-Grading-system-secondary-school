<?php
error_reporting(1);
include('topbar.php');

if(empty($_SESSION['login_admissionID']))
    {   
    header("Location: ../index.php"); 
    }
    else{
	}
	
$admissionID = $_SESSION["login_admissionID"];
$session = $_SESSION["session"];
$term = $_SESSION["term"];

//select student details
$sql = "select * from tblstudent where admissionID='$admissionID'"; 
$result = $conn->query($sql);
$rowaccess = mysqli_fetch_array($result);

//select result details
$sql = "select * from tblresult where admissionID='$admissionID' and term='$term' and school_session='$session'"; 
$result = $conn->query($sql);
$row_result = mysqli_fetch_array($result);
?>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Result| <?php echo $website_name;   ?></title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <!-- Toastr style -->
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="icon" type="image/png" sizes="16x16" href="../<?php echo $favicon; ?>">
    <style>
table, th, td {
  border:2px solid black;
}
.style3 {font-weight: bold}
    .style4 {
	color: #000000;
	font-weight: bold;
}
    .style5 {color: #000000}
    </style>
</head>

<body>

            <div class="wrapper wrapper-content  animated fadeInRight article">
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3">
                    <div class="ibox">
                        <div class="ibox-content">
                          <div class="text-center article-title">
                            <h2 class="style3">
                            <?php echo $website_name;   ?>,<?php echo $address;   ?> </h2>
                            <h2><img src="../home/<?php echo $rowaccess['photo'];  ?>" width="97" height="90"></h2>
                            <p>&nbsp;</p>
                            <h2 class="style4">STUDENT RESULT </h2>
                          </div>
                          <p> <span class="style5"><strong>FULLAME:</strong>  <?php echo $rowaccess['fullname']; ?></span></p>
                          <p class="style5"> <strong>REG NO:</strong>  <?php echo $admissionID; ?> </p>

                            <p class="style5"> <strong>SESSION: </strong> <?php echo $_SESSION['session']; ?>    ,  <strong>TERM:</strong>  <?php echo $_SESSION['term']; ?>, <strong>CLASS :</strong>  <?php echo $rowaccess['class_arm']; ?></p>


                            <span class="style5">
                            <?php
function getOrdinal($number){
    // get first digit
    $digit = abs($number) % 10;
    $ext = 'th';
   $ext = ((abs($number) %100 < 21 && abs($number) %100 > 4) ? 'th' : (($digit < 4) ? ($digit < 3) ? ($digit < 2) ? ($digit < 1) ? 'th' : 'st' : 'nd' : 'rd' : 'th'));
    return $number.$ext;
   }
?>
                            </span>
                            <table style="width:100%">
  <tr>
    <td><div align="center" class="style5">Subject</div></td>
    <td><div align="center" class="style5">Score</div></td>
    <td><div align="center" class="style5">Grade</div></td>
    <td><div align="center" class="style5">Remark</div></td>
  </tr>
  <tr>
    <td height="39"><div align="center"><?php echo $row_result['subject1'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['total1'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['grade1'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['remark1'] ;?></div></td>
  </tr>
  <tr>
  <td height="39"><div align="center"><?php echo $row_result['subject2'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['total2'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['grade2'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['remark2'] ;?></div></td>
  </tr>
  <tr>
  <td height="39"><div align="center"><?php echo $row_result['subject3'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['total3'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['grade3'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['remark3'] ;?></div></td>
  </tr>
  <tr>
  <td height="39"><div align="center"><?php echo $row_result['subject4'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['total4'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['grade4'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['remark4'] ;?></div></td>
  </tr>
  <tr>
  <td height="39"><div align="center"><?php echo $row_result['subject5'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['total5'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['total5'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['remark5'] ;?></div></td>
  </tr>
  <tr>
  <td height="39"><div align="center"><?php echo $row_result['subject6'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['total6'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['grade6'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['remark6'] ;?></div></td>
  </tr>
  <tr>
  <td height="39"><div align="center"><?php echo $row_result['subject7'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['total7'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['grade7'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['remark7'] ;?></div></td>
  </tr>
  <tr>
  <td height="39"><div align="center"><?php echo $row_result['subject8'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['total8'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['grade8'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['remark8'] ;?></div></td>
  </tr>
  <tr>
  <td height="39"><div align="center"><?php echo $row_result['subject9'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['total9'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['grade9'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['remark9'] ;?></div></td>
  </tr>
  <tr>
  <td height="39"><div align="center"><?php echo $row_result['subject10'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['total10'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['grade10'] ;?></div></td>
    <td><div align="center"><?php echo $row_result['remark10'] ;?></div></td>
  </tr>

  <tr>
  <td height="9"></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
  <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>


                            <div class="row">
                              <div align="center">
                                <p class="style5"><strong>TOTAL :</strong> <?php echo $row_result['grandtotal']; ?> || <strong>AVERAGE :</strong> <?php echo $row_result['average']; ?> || <strong>POSITION :</strong> <?php echo getOrdinal($row_result['position']); //1st
;      ?> </p>
                                <p><a href="#" id="print-button" onClick="window.print();return false;">Print this page</a> </p>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
       

        </div>
        </div>



    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

</body>

</html>
