<?php
error_reporting(1);
include('topbar.php');

if(empty($_SESSION['login_username']))
    {   
    header("Location: ../index.php"); 
    }
    else{
	}
      
$id= $_GET['id'];
$class= $_GET['classid'];        
$session= $_GET['sessionid'];        
$term= $_GET['termid'];        

$sql = "DELETE FROM tblresultsummary WHERE ID=?";
$stmt= $dbh->prepare($sql);
$stmt->execute([$id]);

$sql = "DELETE FROM tblresult WHERE class_arm=? and school_session=? and term=?";
$stmt= $dbh->prepare($sql);
$stmt->execute([$class,$session,$term]);
header("Location: result-summary.php"); 
 ?>