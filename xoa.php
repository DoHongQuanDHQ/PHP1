<?php
   include 'connect.php';
   $id = $_GET['id'];
   $sql = "DELETE FROM `flights` WHERE flight_id = $id";
   $conn->exec($sql);
   header('location:danhsach.php');

?>