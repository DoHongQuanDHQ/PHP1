<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        session_start();
        include "connect.php";

        // Kiểm tra kết nối
        if (!$conn) {
            die("Kết nối thất bại: " . mysqli_connect_error());
        }

        if (isset($_POST['btnsubmit'])) {
            $user = $_POST['user'];
            $password = $_POST['password'];
            // Thực hiện truy vấn SQL để kiểm tra tên đăng nhập và mật khẩu
            $sql = "SELECT * FROM `dangki` WHERE username='$user' AND password='$password'";
            $result = mysqli_query($conn, $sql);
            // Kiểm tra kết quả truy vấn
            if (mysqli_num_rows($result) > 0) {
                $_SESSION['user'] = $user;
                header("Location: trangchu.php");
                exit; // Add exit to prevent further execution
            } else {
                echo "Thông tin đăng nhập không chính xác";
            }
        }

        // Đóng kết nối
        mysqli_close($conn);
    ?>
    <h2>Đăng Nhập</h2>
    <form action="" method="post">
        <input type="text" name="user" id="" placeholder="Username"><br>
        <input type="password" name="password" id="" placeholder="Password"><br> <!-- Corrected input name attribute -->
        <input type="submit" value="Đăng Nhập" name="btnsubmit">
    </form>
</body>
</html>
