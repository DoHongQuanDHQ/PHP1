<?php
    include'connect.php';
    $id = $_GET['id'];
    $sql = "DELETE FROM `sanpham` WHERE id=$id";
    $conn->exec($sql);
    header("Location: danhsach.php");
?>