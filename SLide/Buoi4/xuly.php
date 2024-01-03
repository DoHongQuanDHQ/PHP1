<?php
echo "<pre>";
print_r($_GET);
echo $_GET['txtuser']."<br>";
echo $_GET['txtpass']."<br>";
    if(isset($_POST['btnsubmit'])){
    echo "<pre>";
    print_r($_POST);
    echo "</pre>";
    echo $_POST['txtuser']."<br>";
    echo $_POST['txtpass']."<br>";
}else{
    echo "Mời bạn quay lại trang đăng nhập";
}

// Nếu nhập user = admin và pass = 1234567
// Nếu đúng:Chuyển hướng sang trang (slide4.2.php)
// Nếu sai : Quay lại trang đăng nhập (slide4.1.php)

if (isset($_GET['btnsubmit'])) {
    $user = $_GET['txtuser'];
    $pass = $_GET['txtpass'];

    if ($user == "admin" && $pass == "123456") {
        // echo "Bạn đã đăng nhập thành công";
        // header("Location : slide4.2.php");
        echo '<script>alert("Ban dang nhap thanh cong");</script>';
        echo '<script>window.location.href = "slide4.2.php";</script>';
    } else {
        echo "Thông tin bạn đăng nhập không chính xác";
        header("Location : slide4.1.php");
    }
} else {
    echo "Mời bạn quay lại trang đăng nhập";
}
