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
$sql = "DELETE FROM tblsubject WHERE ID=?";
$stmt= $dbh->prepare($sql);
$stmt->execute([$id]);

header("Location: add-subject.php"); 
 ?>